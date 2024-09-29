

# DegenGamingToken

A smart contract for an ERC20 token designed for a gaming platform, allowing minting, transferring, redeeming in-game items, checking balances, and burning tokens.

## Description

**DegenGamingToken (DGT)** is an ERC20 token created for a gaming platform. Players can earn tokens as rewards, transfer tokens between accounts, redeem tokens for in-game items, and burn tokens when they are no longer needed. The contract includes functionality to securely handle these operations. Only the contract owner can mint tokens and set item costs for redemption, while players can freely transfer, redeem, and burn their tokens.

## Features
- **Minting tokens**: Only the contract owner can mint tokens.
- **Transferring tokens**: Players can transfer tokens to other players.
- **Redeeming tokens**: Players can redeem tokens for in-game items.
- **Checking balances**: Players can check their token balances at any time.
- **Burning tokens**: Players can burn tokens they no longer need.
- **Tracking redeemed items**: The contract keeps track of items redeemed by players.

## Getting Started

### Prerequisites

Ensure you have the following tools installed before proceeding:
- **Node.js and npm** (for managing dependencies)
- **Solidity compiler** (for compiling smart contracts)
- **MetaMask** or another Web3 wallet for interacting with the contract

### Installing

To install and use the DegenGamingToken smart contract locally:

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   ```

2. **Navigate to the project directory:**
   ```bash
   cd DegenGamingToken
   ```

3. **Install the necessary dependencies:**
   ```bash
   npm install
   ```

### Executing Program

To deploy and interact with the DegenGamingToken contract using Remix:

1. **Deploy the contract:**
   - Open [Remix IDE](https://remix.ethereum.org/).
   - Create a new file and paste the DegenGamingToken contract code.
   - Compile the contract using the Solidity compiler.
   - Deploy the contract using the "Deploy & Run Transactions" tab, selecting the appropriate environment (e.g., Injected Web3 for MetaMask).

2. **Mint tokens (Owner only):**
   ```javascript
   await degenGamingToken.methods.mint(<recipient-address>, <amount>).send({from: <owner-address>});
   ```

3. **Set item costs (Owner only):**
   ```javascript
   await degenGamingToken.methods.setItemCost(<item-name>, <cost-in-tokens>).send({from: <owner-address>});
   ```

4. **Transfer tokens between players:**
   ```javascript
   await degenGamingToken.methods.transferTokens(<recipient-address>, <amount>).send({from: <sender-address>});
   ```

5. **Redeem tokens for an item:**
   ```javascript
   await degenGamingToken.methods.redeem(<item-name>).send({from: <player-address>});
   ```

6. **Check token balance:**
   ```javascript
   const balance = await degenGamingToken.methods.getBalance(<address>).call();
   console.log(`Balance: ${balance}`);
   ```

7. **Burn tokens:**
   ```javascript
   await degenGamingToken.methods.burn(<amount>).send({from: <holder-address>});
   ```

8. **View redeemed items for a player:**
   ```javascript
   const redeemedItems = await degenGamingToken.methods.getRedeemedItems(<player-address>).call();
   console.log('Redeemed items:', redeemedItems);
   ```

### Tracking the Contract on Snowtrace (Avalanche Fuji Network)

To track the deployed contract on the Avalanche Fuji testnet using Snowtrace:

1. **Verify the contract:**
   - Copy the contract address from Remix after deployment.
   - Open [Snowtrace](https://testnet.snowtrace.io/).
   - Search for the contract address in the search bar.
   - Click on "Verify and Publish" under the contract code tab.
   - Enter the contract details and the Solidity source code for verification.

2. **Monitor Transactions:**
   - Once the contract is verified, you can view all transactions and interactions with the contract on the contract's Snowtrace page.
   - Check the "Contract" tab for the source code and the "Transactions" tab for a list of all transactions.

## Help

For troubleshooting common issues:

* **Verify Contract Deployment:**
  - Ensure the contract was deployed successfully on the blockchain explorer (e.g., Snowtrace for Avalanche Fuji).
  - Confirm that the transaction was successful by checking the contract address and its status.

* **Help with Remix Commands:**
  - Visit the [Remix IDE Documentation](https://remix-ide.readthedocs.io/) for help with specific commands.

## Authors

**Suhani Bajjard**  
For inquiries, feel free to contact the author.

--- 

This updated README reflects the contract's complete functionality, providing clear instructions on interacting with it.
