# First Token

This Solidity program is a simple token created in a smart contract. The purpose of this program is to learn and practice the solidity programming language syntax and have a practical grasp of transactions with tokens.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain.

The smart contract contains the information about a token, balances of owners of the token, and functions to mint or burn them.

Below is the part of code that contains the basic token information, i.e. name, abbreviation, and total supply.

```solidity

string tokenName = "MOINAK";
string tokenAbbreviation = "MNX";
uint totalSupply = 0;

```

Next comes the record of accounts and their balances. Below is the corresponding code.

```solidity

mapping(address => uint) public balances;

```

Now the functions *mint* and *burn* are declared. The *mint* function creates a certain instances of the token by incrementing the total supply and balance of the address mentioned.

```solidity

function mint(address _address, uint _value) public {
    totalSupply += _value;
    balances[_address] += _value;
}

```

The *burn* function does the opposite of the *mint* function, destroying a specified number of token instances by decrementing from the total supply and from the balance of the address mentioned.

```solidity

function burn(address _address, uint _value) public {
    if (balances[_address] >= _value) {
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}

```

## Executing program

You can use Remix, an online Solidity IDE to run this program. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol).

Once you have the new file open, write your code, or copy the above code.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile mySecondContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "mySecondContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the functions. Click on the "mySecondContract" contract in the left-hand sidebar, put values for the parameters of functions *mint* or *burn*, and then click on the function button. On the console on the bottom-right panel, you will see the details of the operations performed by the functions. You can also verify the results by checking the variables stored in the smart contract..
