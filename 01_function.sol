// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

contract SimpleStorage{
    uint public fav;
    function store(uint _fav)public {
        fav=_fav;
    }

    function retrieve() public view returns (uint256){
        return fav;
    }
//view,pure        
//pure -> returns pure literals

    function xyz()public pure returns (uint256){
        //return fav;
        return 19;
    }
    //store making transaction
    //other funs making just call as they are not updating
}

