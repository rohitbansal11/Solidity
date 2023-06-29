pragma solidity ^0.5.11;

contract MyContract {
    //declare enum
    //use enum
    //accept enum as argumanet

    enum STATE {
        INACTIVE,
        ACTIVE
    }
    STATE state;

    function setToActive() external {
        state = STATE.ACTIVE;
    }

    function foo() external {
        if (state == STATE.ACTIVE) {
            //do something
        }
    }

    function bar(STATE _state) external {




        
    }
}
