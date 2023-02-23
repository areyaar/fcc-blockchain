// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
// EVM is a standard of how a contract is gonna be deployed
// any network working on EVm will take solidity smart contracts

contract DeployingContract{
    //uint256 num;
    uint256 dummyNum;
    struct People{
        uint256 age;
        string name;
    }
    People[] public peopleList;
    function addPerson( string memory _name ,uint256 _age) public {
    
        People memory person1 = People(_age, _name); 
        peopleList.push(person1);
        
    }
// let's say we like our contract and we want to deploy this contract
// we will deploy it in a testnet
//A testnet is a blockchain network that is used for testing and experimenting with blockchain 
//applications and smart contracts in a safe and controlled environment. Testnets are separate from
// the main blockchain network and are designed to simulate the behavior of the main network without risking real 
//cryptocurrency or other valuable assets.

// to deploy this contract, we will need it to be deployed on INjected Provider environment -Metamask
// we have to connect to a testnet network and get the dummy ETH of that testnet network
// maine Goerli ETH network connect kia hai,
// and I went to a goerli testnet faucet to get the dummy crypto sent to my account
// I got 0.2 goerli eth
// now I can run these contracts on network
}


