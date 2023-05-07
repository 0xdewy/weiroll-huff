// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/PlannerHuff.sol";
import "../src/weiroll/Planner.sol";
import "../src/weiroll/Weiroll.sol";
import "../src/weiroll/CommandBuilder.sol";
import "./helpers/Events.sol";
import "./helpers/Math.sol";
import "./helpers/Payable.sol";

interface IWeiroll {
    function execute(bytes32[] calldata _commands, bytes[] memory _state) external payable;
}

contract WeirollTest is Test, Events {
    /// @dev Address of the VmTest contract.
    IWeiroll weirollHuff;
    Weiroll weiroll;
    Planner planner;
    PlannerHuff plannerHuff;
    Events events;
    Math math;
    Payable payableContract;

    /// @dev Setup the testing environment.
    function setUp() public {
        weiroll = new Weiroll();
        weirollHuff = IWeiroll(HuffDeployer.deploy("Weiroll"));
        planner = new Planner();
        plannerHuff = new PlannerHuff();
        events = new Events();
        math = new Math();
        payableContract = new Payable();
    }

    // call math.add() 30 times
    function testGasCompareAddUints() public {
        uint256 a = 10000;
        uint256 b = 32490283094;

        uint256 gasUsed = 1;
        uint256 gas = 1;
        for (uint256 i = 0; i < 30; i++) {
            planner.staticCall(address(math), math.add.selector);
            planner.withRawArg(abi.encode(a), false);
            planner.withRawArg(abi.encode(b), false);
            bytes1 stateIndex = planner.saveOutput();
            planner.regularCall(address(events), events.logUint.selector);
            planner.withArg(stateIndex);
        }
        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();
        gas = gasleft();
        weiroll.execute(_commands, _state);
        gasUsed = gas - gasleft();
        console.log("Gas - Weiroll.addUints(): ", gasUsed);

        for (uint256 i = 0; i < 30; i++) {
            plannerHuff.staticCall(address(math), math.add.selector);
            plannerHuff.withRawArg(abi.encode(a));
            plannerHuff.withRawArg(abi.encode(b));
            (uint8 stateIndex, uint8 cmdIndex) = plannerHuff.saveOutput();
            plannerHuff.regularCall(address(events), events.logUint.selector);
            plannerHuff.withArg(stateIndex, cmdIndex);
        }
        (bytes32[] memory huffCommands, bytes[] memory huffState) = plannerHuff.encode();
        gas = gasleft();
        weirollHuff.execute(huffCommands, huffState);
        gasUsed = gas - gasleft();
        console.log("Gas - Huff.addUints(): ", gasUsed);

        gas = gasleft();
        for (uint256 i = 0; i < 30; i++) {
            uint256 val = math.add(a, b);
            events.logUint(val);
        }
        console.log("Gas - Pure Multicall: ", gas - gasleft());
    }

    function testAddUints() public {
        uint8 a = 0x69;
        uint16 b = 0x420;
        planner.staticCall(address(math), math.add.selector);
        planner.withRawArg(abi.encode(a), false);
        planner.withRawArg(abi.encode(b), false);
        bytes1 index = planner.saveOutput();
        planner.regularCall(address(events), events.logUint.selector);
        planner.withArg(index);

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        weiroll.execute(_commands, _state);
    }
}
