//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";  // OpenZeppelin package contains implementation of the ERC 20 standard, which our NFT smart contract will inherit

contract SuperT is ERC20 {
    uint constant _initial_supply = 9500 * (10**18);  // setting variable for how many of your own tokens are initially put into your wallet, feel free to edit the first number but make sure to leave the second number because we want to make sure our supply has 18 decimals

    string private _tokenURI;

    /* ERC 20 constructor takes in 2 strings, feel free to change the first string to the name of your token name, and the second string to the corresponding symbol for your custom token name */
    constructor(string memory tokenURI) ERC20("SuperT", "SET") public {
        _mint(msg.sender, _initial_supply);
                _tokenURI = tokenURI;

    }

    function tokenURI() public view returns (string memory) {
        return _tokenURI;
    }
}