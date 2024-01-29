// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18<0.9.0;

contract SimpleStorage{
    /*
      Basic Types- 
     1.Boolean -> bool
     2. Integer -> int,unit
     3. Address 
     4. bytes
    
    */

    bool hasClass=true;
    uint whichClass=4; //unit256 uint16 unit8 anything we can specify
    int num=-99;
    string str="Ankit Raj";
   // address myAddress;
    bytes32 favByte="anything";  //we cant specify anything like byte32 byte16



    uint x; //it is same as uint x=0

}

