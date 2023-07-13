// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

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
       B b = B(addressB);
       return b.helloWorld();
    }

}

contract B{
    function helloWorld () external  pure returns(string memory){
        return "Hello World ";
    }
}
