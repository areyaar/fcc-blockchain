// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;  

contract mappingsContract{
    
    //People[] public peopleList;
    
   mapping(string=> uint256) public mapi;

   function addPeople(string memory _name, uint256 _age)  public {
       mapi[_name]=_age;
   }
    // we have an array jisme we store people struct, it contains age and name
    // what if we have a name and we need to know the age of the person??
    // we can obviously iterate the array but badi array hui to we are fucked

    // mapping comes handy in these conditions
    // mapping is a data structure here, each key is mapped with a single value
    // syntax : mapping(string=> uint256) public nameOfMapping;
    // a mapping is a hash map basically
    // idhar error aya the when addPeople fn me pehle uint256 lia as input
    // map was not putting in entry 
    // so pehla argument in the function is string then uint
    



}
