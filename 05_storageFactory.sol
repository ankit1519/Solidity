// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {SimpleStorage} from "./SimpleStorage.sol";
// import {SimpleStorage,xyz,abc} from "./SimpleStorage.sol";
contract StorageFactory{
    //SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorage;
    function createSimpleStorageContract()public{
        SimpleStorage newSimpleStorage=new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //address
        //ABI - Application Binary Interface
        SimpleStorage newSimpleStorage=listOfSimpleStorage[_simpleStorageIndex];
        newSimpleStorage.store(_newSimpleStorageNumber);
    }
    function sfGet(uint _simpleStorageIndex) public view returns(uint256){
        SimpleStorage newSimpleStorage=listOfSimpleStorage[_simpleStorageIndex];
        return newSimpleStorage.retrieve();
    }
}
