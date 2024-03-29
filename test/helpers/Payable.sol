// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Payable {
    event Paid(uint256 value);

    function pay(uint256 value) external payable {
        require(msg.value == value, "Payable: incorrect value");
        emit Paid(value);
    }

    function balance() external view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {}

    fallback() external payable {}
}
