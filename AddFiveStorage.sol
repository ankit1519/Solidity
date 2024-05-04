// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {SimpleStorage} from "./SimpleStorage.sol";
contract AddFiveStorage is SimpleStorage{
     function sayHello() public pure returns(string memory){
        return "Hello";
     }


     //change store function
     //+5
     //virtual and overrides keywords
     function store(uint _num) public override {
        fav=_num+5;
    }
}