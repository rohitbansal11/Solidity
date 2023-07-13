// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract MyContract{
    uint a;
    
    event newTrade (
        uint  date,
        address indexed from,
        address  indexed to ,
        uint indexed  amount

    );

    function trade(address to ,uint amount) external {
        emit newTrade(block.timestamp, msg.sender, to, amount);
    }
}
