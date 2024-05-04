// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// import {SimpleStorage, Sf2} from "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";
// import "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage[] public simpleStorage;
    function createSimpleStorageContract()public{
        simpleStorage.push(new SimpleStorage()); //deploy contract
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber)public{
        //Address
        //ABI -appln binary interface
        SimpleStorage mySimpleStorage=simpleStorage[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint __simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySS=simpleStorage[__simpleStorageIndex];
        return mySS.rtr();
    }
}