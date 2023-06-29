pragma solidity ^0.5.11;

contract MyContract {
    //declare struct
    //curd
    //array of struct
    //mapping of struct

    struct User {
        address addr;
        uint256 scrore;
        string name;
    }

    User[] users;

    mapping(address=>User)userList2;


    function foo(string calldata _name) external {
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User(msg.sender, 0, _name);
        User memory user3 = User({name: _name, scrore: 0, addr: msg.sender});
        user3.addr;
        user3.scrore = 20;
        delete user1;
//array
        users.push(user1);

        ///
        userList2[msg.sender]=user2;

        
    }
}
