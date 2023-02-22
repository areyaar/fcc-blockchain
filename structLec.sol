// SPDX-License-Identifier: MIT

// license ka indentification aise hi comments me hota hai

pragma solidity ^0.8.8;  

contract secondContract{
// new struct banaenge for storing a person's data
    /*People public person1=People({
        age:15, 
        name: "Saket"
    });*/
    // upar we declared a person1 with age and name as properties
    People[] public peopleList; //[] dia without size toh it becomes a dynamic array
    // side me blue button(peopleList) me it is asking for a uint256 -> it is the index of any element we would like to be printed;


    struct People{
        uint256 age;
        string name;
        // people datatype bana lia yaha humne
        // we can store People data in this datatype
    }

    //  now we will declare arrays

    // uint256[] public peopleList;
    // yaha data type ke samne [] lagana padta hai to tell it's an array, not peopleList[]
    // we declare an array of datatype People in line 14
    
    // now we make a function to add people objects into the peopleList array

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
