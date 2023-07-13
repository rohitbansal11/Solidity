// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import 'ContractB.sol';
contract MyContract {
   // call function of other contract
   //import keyword
   //contract inetrface
   //error propagation


    address addressB;
    function setAddressB(address _addressB) external {
        addressB= _addressB;
    }

    function callHelloWorld () external view returns(string memory){
       InterfaceB b = InterfaceB(addressB);
       return b.helloWorld();
    }

}

