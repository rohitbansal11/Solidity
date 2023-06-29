pragma solidity ^0.5.11;

contract MyContract {
   

   //declare mapping 
   mapping(address => uint)balances;
   mapping(address => mapping(address=>bool))aprove;
    mapping(address=>uint[])scores;


   function foo(address spender)external {

       //add
       balances[msg.sender]=100;

       //read 

       balances[msg.sender];


       //update 

       balances[msg.sender]=200;

       //delete 
       delete balances[msg.sender];

       // default value  is zero 
    //    balances[someAddressThatDoesNotExit];




        // exotic mapping  nested mapping
        
        aprove[msg.sender][spender]=true;
        aprove[msg.sender][spender];
        aprove[msg.sender][spender]=false;

        delete aprove[msg.sender][spender];


    // exotic mapping  array inside  mapping
    scores[msg.sender].push(1);
    scores[msg.sender].push(2);





   }
}
