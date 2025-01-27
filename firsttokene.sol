// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract AdhirajToken {

    // Public variables to store token details
    string public tokenName = "AdhirajToken";
    string public tokenAbbrv = "ATK";
    uint public totalSupply = 1000;

    // Mapping from addresses to their balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }

}
