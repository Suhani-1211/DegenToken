// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("DegenGamingToken", "DGT") Ownable(initialOwner){
        transferOwnership(initialOwner); // Assuming the ownership of tokens should be transferred to the owner at contract creation. Adjust if that's not the case.
    }

    function mint(address to, uint256 amount) public onlyOwner {
         _mint(to, amount);
    }

    function decimals() override public pure returns (uint8){
        return 0;
    }

    function burn(uint256 amount) public {
         _burn(msg.sender, amount);
    }

    function redeem(address from, uint256 amount) public onlyOwner {
         _burn(from, amount);
        // Additional logic for redeeming tokens for in-game items can be added here
    }

    function getBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function transferTokens(address to, uint256 amount) public returns (bool) {
        return transfer(to, amount);
    }
}
