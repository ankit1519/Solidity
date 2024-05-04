// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStorage{
    uint public thala=7;
//     int256 century=-100;
//     string player="thala for a reason";
//     bool isThalaForAReason= true;
//     address myAdd=0xA32c456B5F9C4a618569927eaC445E0f615B6147;
//     bytes32 b="cat"; //bytes2 and bytes are diff


    uint256 public fav; //=0
    function store(uint256 _fav) public virtual{
        fav=_fav;
    }








    //visibility: 1.public 2.private 3.internal 4.external

    //view,pure 
    //view disallow updating state
    //pure fun disallow updating state and even reading from storage
    function anyVar() public pure returns (uint256){
        return 7;
    }
     function rtr()public view returns (uint256){
        return fav;
    }








    //array
    uint256 [] public listOfNum;
    
    //structure

    struct Person{
        uint256 fn;
        string name;
    }
    // Person public myFriend=Person(19,"Ankit Raj");
    // Person public myFriend1=Person(19,"Ankit Raj");
    // Person public myFriend2=Person(19,"Ankit Raj");
    Person [] public ListOfPerson; //dynamic array
    // Person [5] public ListOfPerson; //static array
    function addPerson(uint _num,string memory _name) public{
        ListOfPerson.push(Person(_num,_name));
    }







    //EVM can store and access data in 3 places:
    //calldata, memory, storage

    //calldata,memory -> temporary variable                     storage- permanently stored variable - can be modified

    //we can change value in memory but not in calldata

    function abc(string memory _name) pure public {
        _name="Ankit";
    }

    function abcd(string calldata _name) pure public {
        //_name="Ankit";
    }



    //mapping
    mapping(string=>uint256) public nameToNumber;
    function fn(string memory _name,uint256 num) public {
        nameToNumber[_name]=num;
    }



}
contract Sf2{
    
}
contract Sf3{}
contract Sf4{}
contract Sf5{}