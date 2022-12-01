//SPDX-License-Identifier: UNLICENSED

import "../node_modules/hardhat/console.sol";
// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

//This is the main building block for smart contracts.
contract Token{
    // Some string types variables to identify the token.
    string public name = "Mount Everest";
    string public symbol = "ME";

    uint256 public totalSupply = 1000;
    address public owner;

   // A mapping is a key/value map. Here we store each account's balance.
    mapping(address=>uint) balances;

      // Contract deployer is the owner to total supply.
    constructor(){
        balances[msg.sender]= totalSupply;
        owner = msg.sender;
    }

    function transfer (address to , uint256 amount) external {

        console.log("**Sender balance is %s tokens**", balances[msg.sender]);

        console.log("**Sender is sending %s tokens to %s address**", amount, to);
        //Check if transaction sender has enough tokens. otherwise false the transaction.
        require(balances[msg.sender]>= amount, "Not enough tokens");
        
        //Transfer the amount "from" to "to".
        balances[msg.sender] -= amount;
        balances[to] += amount;

    }

    function balanceOf(address account) external view returns (uint256){
        return balances[account];
    }



}