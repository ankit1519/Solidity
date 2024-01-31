// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
   mapping(string=>uint256) public nameToNum;
   function addMap(string memory _name, uint256 _num) public {
    nameToNum[_name]=_num;
   }
}
