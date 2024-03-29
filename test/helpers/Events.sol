// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Events {
    event LogUint(uint256 value);
    event Paid(uint256 value);
    event LogAddress(address addr);

    function logUint(uint256 value) public {
        emit LogUint(value);
    }

    function logAddress(address addr) public {
        emit LogAddress(addr);
    }
}
