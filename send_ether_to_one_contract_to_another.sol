// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract MyContract {
    //transfer
    // address vs address payable 
    //address payable casting (address and uint)
    // msg.sender
    //send vs transfer


    ///multiple recipient 
    address payable []recipients;
    function sendEther (address payable  recipient) external  {
        recipient.transfer(1 ether);
        // transer 1 ether from this smart contract to recipient

    //don't use like this ==
    // address a;
    // a=recipient;
    // a.transfer(100);

    recipient.send(100);
    
    msg.sender.transfer(100);
    }

}
