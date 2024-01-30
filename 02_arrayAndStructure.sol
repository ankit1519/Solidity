// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract SimpleStorage{
    uint256[] favNums;
    struct Person{
        uint256 favNum; //0
        string name; //1
    }

    //Person public myFriend=Person(19,"AJ");
    //Person public myFriend=Person({favNum:19,name:"AJ"});
    // Person public myFriend1=Person({favNum:15,name:"AR"});
    //so one

    //if we want to add more.. how much ------------- so we can use array of struct Person

    //dynamic Array
    Person[] public friendList; //[]


    //static Array
    // Person[3] public  friendList2;

    function addFriend(uint256 _favNum, string memory _name)public{
        //Person newPerson=Person(_favNum,_name);
        friendList.push(Person(_favNum,_name));
    }
}
