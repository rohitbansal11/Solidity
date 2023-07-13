// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface InterfaceB {
  function helloWorld () external  pure returns(string memory);

}

contract B{
    function helloWorld () external  pure returns(string memory){
        return "Hello World ";
    }
}
