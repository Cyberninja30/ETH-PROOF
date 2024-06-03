// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**
 * @title MyToken
 * @dev A simple ERC20-like token implementation with mint and burn functionality
 */
contract MySecondContract {
    // Public variables to store token details
    string public tokenName = "MOINAK";
    string public tokenAbbrv = "MNX";
    uint public totalSupply = 0;

    // Mapping from address to balance
    mapping(address => uint) public balances;

    // Event to log minting activity
    event Mint(address indexed to, uint256 value);

    // Event to log burning activity
    event Burn(address indexed from, uint256 value);

    // Function to mint new tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
        emit Mint(_address, _value);
    }

    // Function to burn tokens
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
        emit Burn(_address, _value);
    }
}
