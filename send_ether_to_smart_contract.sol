// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract MyContract {
    mapping (address => uint) balance;
    function invest() external payable {
        if (msg.value < 1000) {
            revert();
        }
    }

    function balanceOf() external view returns (uint256) {
        return address(this).balance;
    }
}
