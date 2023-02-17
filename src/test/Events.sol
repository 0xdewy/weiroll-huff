// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Events {
    event LogUint(uint256 value);
    event Paid(uint256 value);

    function logUint(uint256 value) public {
        emit LogUint(value);
    }
}
