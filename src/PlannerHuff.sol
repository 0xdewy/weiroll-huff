// SPDX-License-Identifier: Unlicense
import "forge-std/console.sol";

pragma solidity ^0.8.15;

contract PlannerHuff {
    // Flag values
    uint8 constant FLAG_CT_DELEGATECALL = 0x00; // 0b00000000
    uint8 constant FLAG_CT_CALL = 0x01; // 0b00000001
    uint8 constant FLAG_CT_STATICCALL = 0x02; // 0b00000010
    uint8 constant FLAG_CT_VALUECALL = 0x03; // 0b00000011
    uint8 constant FLAG_EXTENDED_COMMAND = 0x80; // 0b10000000
    uint8 constant FLAG_TUPLE_RETURN = 0x40; // 0b010000000

    // Input masks
    uint8 constant INPUT_VARIABLE_LENGTH = 0x80; // 0b10000000
    uint8 constant INPUT_USE_RETURN_VAR = 0x40; // 0b01000000
    uint8 constant INPUT_INDEX_MASK = 0x3F; // 0b00111111
    // Input values
    uint8 constant END_OF_ARGS = 0xFF; // 0b11111111
    uint8 constant USE_STATE = 0xFE; // 0b11111110

    // flag =  0b00000000
    // input = 0b00000000

    // 32 byte command
    struct Command {
        address target;
        bytes4 selector;
        uint8 flag;
        uint8[] inputs;
        uint8 out;
    }

    Command[] public commands;
    bytes[] public state;
    bytes[] public internalState;

    function staticCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: uint8(FLAG_CT_STATICCALL),
                inputs: new uint8[](0),
                out: uint8(0)
            })
        );
    }

    function regularCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: uint8(FLAG_CT_CALL),
                inputs: new uint8[](0),
                out: uint8(0xFF)
            })
        );
    }

    function callWithValue(address _target, bytes4 _selector, uint8 amountEth) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: uint8(FLAG_CT_VALUECALL),
                inputs: new uint8[](0),
                out: uint8(0xFF)
            })
        );
        commands[commands.length - 1].inputs.push(uint8(amountEth));
    }

    function delegateCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: uint8(FLAG_CT_DELEGATECALL),
                inputs: new uint8[](0),
                out: uint8(0xFF)
            })
        );
    }

    // Use argument passed as calldata
    function withRawArg(bytes calldata value) public {
        Command storage command = commands[commands.length - 1];
        ensureInputLength(command);

        // If it's dynamic add variable length flag
        if (value.length > 32) {
            // uint8 index = uint8(INPUT_VARIABLE_LENGTH & state.length);
            // command.inputs.push(uint8(index));
            // TODO: can be fixed length arrays
            revert("Dynamic arguments not supported");
        } else {
            command.inputs.push(uint8(state.length));
        }
        state.push(value);
    }

    // Use argument saved from previous staticcall
    function withArg(uint8 internalStateIndex, uint8 commandIndex) public {
        Command storage command = commands[commands.length - 1];
        // TODO: extended commands
        ensureInputLength(command);

        if (internalState.length == 0) {
            revert("Must use saveOutput on staticcall to use return arguments");
        }

        uint8 index = uint8(INPUT_USE_RETURN_VAR | internalStateIndex);

        // Variable length
        if (commands[commandIndex].out & INPUT_VARIABLE_LENGTH > 0) {
            index = uint8(INPUT_VARIABLE_LENGTH);
        }

        command.inputs.push(index);
    }

    // Save the output of this command to the next available state slot
    function saveOutput() public returns (uint8 internalStateIndex, uint8 commandIndex) {
        Command storage command = commands[commands.length - 1];
        // TODO: handle dynamic output
        command.out = (uint8(internalState.length));

        // reserve slot in internal state
        internalState.push(new bytes(0));

        internalStateIndex = uint8(internalState.length - 1);
        commandIndex = uint8(commands.length - 1);
    }

    function encode() public returns (bytes32[] memory _commands, bytes[] memory _state) {
        _commands = new bytes32[](commands.length);
        // loop through commands and encode them
        for (uint256 i = 0; i < commands.length; i++) {
            Command storage command = commands[i];

            // Fill remaining inputs with 0xFF (end-of-args)
            if (command.inputs.length < 6) {
                while (command.inputs.length < 6) {
                    command.inputs.push(uint8(0xFF));
                }
            }

            bytes memory cmd = abi.encodePacked(
                command.selector,
                command.flag,
                abi.encodePacked(
                    uint8(command.inputs[0]),
                    uint8(command.inputs[1]),
                    uint8(command.inputs[2]),
                    uint8(command.inputs[3]),
                    uint8(command.inputs[4]),
                    uint8(command.inputs[5])
                ),
                command.out,
                command.target
            );
            require(cmd.length == 32, "Planner: Command encoding error");
            require(internalState.length < 64, "Planner: Too many state return values");
            require(state.length < 64, "Planner: Too many state values");

            _commands[i] = bytes32(cmd);
        }
        _state = state;
        clear();
    }

    function ensureInputLength(Command storage cmd) internal view {
        if (cmd.inputs.length == 6) {
            revert("Planner: Too many arguments");
        }
    }

    function clear() public {
        delete commands;
        delete state;
    }
}
