// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;  // sabse pehle we put the version of solidity, ^0.8.7 matlab any version above 0.8.7 is okay
// >=0.8.7 <0.9.0 matlab anything above 0.8.7 and below 0.9.0

contract firstContract{
// contracct keyword tells the compiler ki aage wala code ab contract ka hai
// it's just like a class in C++ 
// main datatypes are bool, uint, int, address, bytes
// uint is unsigned int and address is the address string
    //bool isTrue = false;
    // uint me we can specify the size of the uint
    // eg uint8 -> 8bit, default it is specified as, size is to be multiple of 8
    // public keyword is accesible by anyone, private -> only this contract
    // window me blue button hoga read functions ka because they dont spend gas to
    // complete the transaction here, the keyword for those are view and pure -> they dont spend any gas to execute
    // jo bhi gas fee laga view function me wo contract ke through call hone pe laga
    // alone call pe no gas fee
    // view keyword -> fn only used to read -> cant update
    // pure keyword -> no read and update
    // no gas fee because blockchain ka state change nahi ho raha isme,
    // function is just reading the blockchain
    //also ek variable pe public keyword lagane pe ek getterfunction is automatically set up which is a view fn and does not cost any gas

    uint256 public favNum;
    function exec(uint256 _favoriteNumber) public{
        favNum = _favoriteNumber;
        
    }

    function print() public view returns(uint256){
        return favNum;
    }
    function add() public view returns(uint256){
        return (1+1);
    }

//0xd9145CCE52D386f254917e481eB44e9943F39138
}  

