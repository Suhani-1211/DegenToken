// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    // Mapping to store item names and their redemption cost in DegenTokens
    mapping(string => uint256) public itemCost;

    // Mapping to track redeemed items for each player
    mapping(address => string[]) public redeemedItems;

    constructor(address initialOwner) ERC20("DegenGamingToken", "DGT") Ownable(initialOwner) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 0; 
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function redeem(string memory itemName) public {
        uint256 cost = itemCost[itemName];
        require(cost > 0, "Item does not exist or cost not set");
        require(balanceOf(msg.sender) >= cost, "Insufficient balance to redeem item");

        // Burn the tokens from the player's balance
        _burn(msg.sender, cost);

        // Deliver the item to the player by adding it to their redeemed items
        redeemedItems[msg.sender].push(itemName);
    }

    function setItemCost(string memory itemName, uint256 cost) public onlyOwner {
        itemCost[itemName] = cost;
    }

    function getBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function transferTokens(address to, uint256 amount) public returns (bool) {
        return transfer(to, amount);
    }

    // Function to retrieve the redeemed items of a player
    function getRedeemedItems(address player) public view returns (string[] memory) {
        return redeemedItems[player];
    }
}
