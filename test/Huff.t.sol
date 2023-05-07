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
import "./helpers/Sender.sol";

interface IWeiroll {
    function execute(bytes32[] calldata _commands, bytes[] memory _state) external payable;
}

contract HuffWeirollTest is Test, Events {
    /// @dev Address of the VmTest contract.
    IWeiroll weirollHuff;
    Weiroll weiroll;
    Planner planner;
    PlannerHuff plannerHuff;
    Events events;
    Math math;
    Payable payableContract;
    Sender sender;

    /// @dev Setup the testing environment.
    function setUp() public {
        weiroll = new Weiroll();
        weirollHuff = IWeiroll(HuffDeployer.deploy("Weiroll"));
        planner = new Planner();
        plannerHuff = new PlannerHuff();
        events = new Events();
        math = new Math();
        payableContract = new Payable();
        sender = new Sender();
    }

    function testHuffSendEther() public {
        uint8 amountEth = 10;
        plannerHuff.callWithValue(address(payableContract), payableContract.pay.selector, amountEth);
        plannerHuff.withRawArg(abi.encode(amountEth));
        (bytes32[] memory _commands, bytes[] memory _state) = plannerHuff.encode();

        vm.expectEmit(true, true, true, true);
        emit Paid(amountEth);
        weirollHuff.execute{value: amountEth}(_commands, _state);
    }

    function testHuffFuzzAddUints(uint128 a, uint128 b) public {
        // call math.add(0x69, 0x420)
        plannerHuff.staticCall(address(math), math.add.selector);
        plannerHuff.withRawArg(abi.encode(a));
        plannerHuff.withRawArg(abi.encode(b));
        (uint8 stateIndex, uint8 cmdIndex) = plannerHuff.saveOutput();
        plannerHuff.regularCall(address(events), events.logUint.selector);
        plannerHuff.withArg(stateIndex, cmdIndex);

        (bytes32[] memory _commands, bytes[] memory _state) = plannerHuff.encode();

        vm.expectEmit(true, true, true, true);
        emit LogUint(uint256(a) + b);

        weirollHuff.execute(_commands, _state);
    }

    function testHuffLogUint() public {
        plannerHuff.regularCall(address(events), events.logUint.selector);
        plannerHuff.withRawArg(abi.encode(0x69));

        (bytes32[] memory _commands, bytes[] memory _state) = plannerHuff.encode();

        vm.expectEmit(true, true, true, true);
        emit LogUint(0x69);
        weirollHuff.execute(_commands, _state);
    }

    function testHuffSender() public {
        address expectedSender = address(weirollHuff);
        plannerHuff.staticCall(address(sender), sender.sender.selector);
        (uint8 stateIndex, uint8 cmdIndex) = plannerHuff.saveOutput();

        plannerHuff.regularCall(address(events), events.logAddress.selector);
        plannerHuff.withArg(stateIndex, cmdIndex);

        vm.expectEmit(true, true, true, true);
        emit LogAddress(expectedSender);

        (bytes32[] memory _commands, bytes[] memory _state) = plannerHuff.encode();
        weirollHuff.execute(_commands, _state);
    }
}
