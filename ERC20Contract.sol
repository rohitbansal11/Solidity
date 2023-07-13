// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

// import ERC20 token
// transfer()
// transferFrom() / approve()

import 'Token.sol';

contract MyContract {
  
    function transfer() external {
        Token token = Token(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
        token.transfer(msg.sender, 10);

    }

    function transferFrom (address _recipient , uint amount) external {
        Token token = Token(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
        token.transferFrom(msg.sender,_recipient,amount );
    }
}

contract Owner {
    function transfer(address _recipient, uint amount) external {
         Token token = Token(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
         token.approve(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7, amount);


        MyContract  transferToken = MyContract(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);
        transferToken.transferFrom(_recipient,amount);
   
    }
}

