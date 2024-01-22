//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";


contract DogePaw is ERC20, ERC20Burnable, ERC20Pausable, ERC20Detailed{

    address public owner;
    bool public paused;

    constructor() ERC20Detailed("DogePaw", "DPAW"){ 
        _mint(msg.sender, 100 * 10 ** uint(decimals())); //Only a specific amount of tokens are created with this code
    }
}
/**
there are a few functions here in this import:

1) first, the getters, these return: decimals, name, symbol, and totalSupply
2) then, the interacted getters: allowance, and balanceOf
    2A) the balanceOf function returns the amount of tokens owned by an account(address)
    2B) the allowance function returns the remaining number of tokens that the spender
        will be allowed to spend on behalf of the owenr through the transferFrom function
        by default, this is zero/
        this value changes when approve and transferFrom are called
3) lastly, there are the approve, transfer, and the transferFrom functions.
    3A) the transferFrom 


 */