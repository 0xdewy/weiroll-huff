// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Weiroll.sol";
import "../src/CommandBuilder.sol";
import "../src/test/Events.sol";
import "../src/test/Math.sol";

contract Planner {
    // FLag values
    uint8 constant FLAG_CT_DELEGATECALL = 0x00;
    uint8 constant FLAG_CT_CALL = 0x01;
    uint8 constant FLAG_CT_STATICCALL = 0x02;
    uint8 constant FLAG_CT_VALUECALL = 0x03;
    uint8 constant FLAG_CT_MASK = 0x03;
    uint8 constant FLAG_EXTENDED_COMMAND = 0x80;
    uint8 constant FLAG_TUPLE_RETURN = 0x40;

    // Input masks
    uint8 constant INPUT_VAR = 0x80; // 0b10000000
    uint8 constant INPUT_IDX = 0x7F; // 0b01111111
    // Input values
    uint8 constant END_OF_ARGS = 0xFF; // 0b11111111
    uint8 constant USE_STATE = 0xFE; // 0b11111110

    // 32 byte command
    struct Command {
        address target;
        bytes4 selector;
        bytes1 flag;
        bytes1[] inputs;
        bytes1 out;
    }

    Command[] public commands;
    bytes[] public state;

    function staticCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: bytes1(FLAG_CT_STATICCALL),
                inputs: new bytes1[](0),
                out: bytes1(0)
            })
        );
    }

    function regularCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: bytes1(FLAG_CT_CALL),
                inputs: new bytes1[](0),
                out: bytes1(0xFF)
            })
        );
    }

    function callWithValue(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: bytes1(FLAG_CT_VALUECALL),
                inputs: new bytes1[](0),
                out: bytes1(0xFF)
            })
        );
    }

    function delegateCall(address _target, bytes4 _selector) public {
        commands.push(
            Command({
                target: _target,
                selector: _selector,
                flag: bytes1(FLAG_CT_DELEGATECALL),
                inputs: new bytes1[](0),
                out: bytes1(0xFF)
            })
        );
    }

    // Use argument passed as calldata
    function withRawArg(bytes calldata value, bool isDynamic) public {
        Command storage command = commands[commands.length - 1];
        if (command.inputs.length == 6) {
            revert("Planner: Too many arguments");
        }
        if (isDynamic) {
            bytes1 idx = bytes1(uint8(0x80 & state.length));
            command.inputs.push(bytes1(idx));
        } else {
            command.inputs.push(bytes1(uint8(state.length)));
        }
        state.push(value);
    }

    // Use argument saved from previous staticcall
    function withArg(bytes1 index) public {
        Command storage command = commands[commands.length - 1];
        if (command.inputs.length == 6) {
            revert("Planner: Too many arguments");
        }
        command.inputs.push(index);
    }

    // Save the output of this command to the next available state slot
    function saveOutput() public returns (bytes1) {
        Command storage command = commands[commands.length - 1];
        // TODO: handle dynamic output
        command.out = bytes1(uint8(state.length));
        // reserve slot in state
        state.push(new bytes(0));
        return bytes1(uint8(state.length - 1));
    }

    function encode()
        public
        returns (bytes32[] memory _commands, bytes[] memory _state)
    {
        _commands = new bytes32[](commands.length);
        // loop through commands and encode them
        for (uint256 i = 0; i < commands.length; i++) {
            Command storage command = commands[i];

            // Fill remaining inputs with 0xFF (end-of-args)
            if (command.inputs.length < 6) {
                while (command.inputs.length < 6) {
                    command.inputs.push(bytes1(0xFF));
                }
            }

            bytes memory cmd = abi.encodePacked(
                command.selector,
                command.flag,
                abi.encodePacked(
                    bytes1(command.inputs[0]),
                    bytes1(command.inputs[1]),
                    bytes1(command.inputs[2]),
                    bytes1(command.inputs[3]),
                    bytes1(command.inputs[4]),
                    bytes1(command.inputs[5])
                ),
                command.out,
                command.target
            );
            require(cmd.length == 32, "Planner: Command encoding error");
            _commands[i] = bytes32(cmd);
        }
        _state = state;
        clear();
    }

    function clear() public {
        delete commands;
        delete state;
    }
}

interface IWeiroll {
    function execute(
        bytes32[] calldata _commands,
        bytes[] memory _state
    ) external;
}

contract WeirollTest is Test, Events {
    /// @dev Address of the VmTest contract.
    IWeiroll weirollHuff;
    Weiroll weiroll;
    Planner planner;
    Events events;
    Math math;

    // 0x<selector><flags><in0><in1><in2><in3><in4><in5><out><address>

    /// @dev Setup the testing environment.
    function setUp() public {
        weiroll = new Weiroll();
        weirollHuff = IWeiroll(HuffDeployer.deploy("Weiroll"));
        planner = new Planner();
        events = new Events();
        math = new Math();
    }

    // Add 2 uints and log the result in another contract
    function testHuffAddUints() public {
        planner.staticCall(address(math), math.add.selector);
        planner.withRawArg(abi.encode(0x69), false);
        planner.withRawArg(abi.encode(0x420), false);
        bytes1 index = planner.saveOutput();
        planner.regularCall(address(events), events.logUint.selector);
        planner.withArg(index);

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        vm.expectEmit(true, true, true, true);
        emit LogUint(0x69 + 0x420);
        weirollHuff.execute(_commands, _state);
    }

    function testHuffLogUint() public {
        // events.logUint(0x69);
        planner.regularCall(address(events), events.logUint.selector);
        planner.withRawArg(abi.encode(0x69), false);

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        // TODO: exect emit
        vm.expectEmit(true, true, true, true);
        emit LogUint(0x69);
        weirollHuff.execute(_commands, _state);
    }

    function testHuffLoopLogUint() public {
        for (uint i = 0; i < 20; i++) {
            planner.regularCall(address(events), events.logUint.selector);
            planner.withRawArg(abi.encode(i), false);
        }

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        // TODO: exect emit
        vm.expectEmit(true, true, true, true);
        emit LogUint(0x0);
        weirollHuff.execute(_commands, _state);
    }

    function testRegularLogUint() public {
        bytes32[] memory commands = new bytes32[](1);
        bytes memory cmd = abi.encodePacked(
            events.logUint.selector,
            bytes1(0x01),
            bytes1(0x00), // in0
            bytes4(0xFFFFFFFF), // in1..4
            bytes1(0xFF), // in5
            bytes1(0xff),
            address(events)
        );
        console.logBytes(cmd);
        assertEq(cmd.length, 32);
        commands[0] = bytes32(cmd);

        bytes[] memory state = new bytes[](1);
        state[0] = abi.encode(0x20); // dest slot index

        planner.regularCall(address(events), events.logUint.selector);
        planner.withRawArg(abi.encode(0x20), false);

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        assertEq(_commands[0], commands[0]);
        weiroll.execute(_commands, _state);
    }
}
