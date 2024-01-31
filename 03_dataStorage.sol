// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract SimpleStorage{
    string []public name;


//calldata, memory, storage
    function addFriend( string memory _name)public{
       _name="Lol";
        name.push(_name);
    }
    function addFriend2( string calldata _name)public{
      // _name="Lol"; can't modify
        name.push(_name);
    }
}
