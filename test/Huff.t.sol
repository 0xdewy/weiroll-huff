// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Planner.sol";
import "../src/Weiroll.sol";
import "../src/CommandBuilder.sol";
import "../src/test/Events.sol";
import "../src/test/Math.sol";
import "../src/test/Payable.sol";

interface IWeiroll {
    function execute(
        bytes32[] calldata _commands,
        bytes[] memory _state
    ) external payable;
}

contract HuffWeirollTest is Test, Events {
    /// @dev Address of the VmTest contract.
    IWeiroll weirollHuff;
    Weiroll weiroll;
    Planner planner;
    Events events;
    Math math;
    Payable payableContract;


    /// @dev Setup the testing environment.
    function setUp() public {
        weiroll = new Weiroll();
        weirollHuff = IWeiroll(HuffDeployer.deploy("Weiroll"));
        planner = new Planner();
        events = new Events();
        math = new Math();
        payableContract = new Payable();
    }

    function testHuffSendEther() public {
        uint8 amountEth = 10;
        planner.callWithValue(
            address(payableContract),
            payableContract.pay.selector,
            amountEth
        );
        planner.withRawArg(abi.encode(amountEth), false);
        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        vm.expectEmit(true, true, true, true);
        emit Paid(amountEth);
        weirollHuff.execute{value: amountEth}(_commands, _state);
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
        uint gas = gasleft();
        weirollHuff.execute(_commands, _state);
        console.log("Huff.addUints(): ", gas - gasleft());
        gas = gasleft();
        weiroll.execute(_commands, _state);
        console.log("addUints(): ", gas - gasleft());
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
        for (uint i = 0; i < 80; i++) {
            planner.regularCall(address(events), events.logUint.selector);
            planner.withRawArg(abi.encode(i), false);
        }

        (bytes32[] memory _commands, bytes[] memory _state) = planner.encode();

        // TODO: exect emit
        vm.expectEmit(true, true, true, true);
        emit LogUint(0x0);
        uint gas = gasleft();
        weirollHuff.execute(_commands, _state);
        console.log("Huff.loopLogUint(): ", gas - gasleft());
        gas = gasleft();
        weiroll.execute(_commands, _state);
        console.log("loopLogUint(): ", gas - gasleft());
    }

}
