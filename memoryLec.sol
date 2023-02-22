// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract MemoryContract{
    //uint256 num;
    uint256 dummyNum;
    struct People{
        uint256 age;
        string name;
    }
    People[] public peopleList;
    function addPerson(uint256 _age, string memory _name) public {
        /*peopleList.push(People({
            age: _age, name: _name
        }));*/

        // we can add like above or can save it in a variable and the push it in the array

        //People memory person1 = People({age: _age, name: _name});
        // we can add declare a People like above or new way
        People memory person1 = People(_age, _name); // compiler will automatically assign age and name due to the sequence we put them in, also we dont need to use the curly brackets
        // for storing these struct data types, we need to put them using memory keyword
        
        peopleList.push(person1);
        // but why did we use the memory keyword here??
        // In Solidity, the "memory" keyword is used to specify the storage location of a variable or parameter.
        //When you declare a variable or a parameter as "memory," it means that it should be stored in memory for the duration of a function call, but will be deleted when the function completes

    }

}
//Notes -
// EVM can store and access information from 6 places
// main three are calldata, memory, storage
// calldata and memory me variable exists temporarily
// storage -> exists outside functino execution
// dummyNum me we didnt specify anything to wo default storage casted hai,
// storage wala data will stay even after function call is over
// calldata wala we cannot modify while the fn is runnig
// memory can be modified when the fn is running(in fn execution)

// we used memory for the name string but didnt use anything for the uint256
// the reason is, array, structs or mapping type are special types and these special types need a specification as in where to store them

// and string is an array of bytes, so it needs a specification on where to store the data of it


