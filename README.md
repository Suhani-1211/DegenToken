# DegenGamingToken

A smart contract for an ERC20 token designed for a gaming platform, allowing minting, transferring, redeeming, checking balances, and burning tokens.

## Description

DegenGamingToken (DGT) is an ERC20 token specifically created for a gaming platform where tokens can be minted as rewards, transferred between players, redeemed for in-game items, and burned if no longer needed. The contract includes functions to handle these operations securely, ensuring only the owner can mint or redeem tokens while allowing players to transfer and burn their tokens freely.

## Getting Started

### Installing

To install and use the DegenGamingToken smart contract:

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
   - Open [Remix IDE](https://remix.ethereum.org/)
   - Create a new file and paste the DegenGamingToken contract code.
   - Compile the contract using the Solidity compiler.
   - Deploy the contract using the "Deploy & Run Transactions" tab, selecting the appropriate environment (e.g., Injected Web3 for MetaMask).

2. **Mint tokens (Owner only):**
   ```javascript
   await degenGamingToken.methods.mint(<recipient-address>, <amount>).send({from: <owner-address>});
   ```
3. **Transfer tokens:**
   ```javascript
   await degenGamingToken.methods.transferTokens(<recipient-address>, <amount>).send({from: <sender-address>});
   ```
4. **Redeem tokens (Owner only):**
   ```javascript
   await degenGamingToken.methods.redeem(<holder-address>, <amount>).send({from: <owner-address>});
   ```
5. **Check token balance:**
   ```javascript
   const balance = await degenGamingToken.methods.getBalance(<address>).call();
   console.log(`Balance: ${balance}`);
   ```
6. **Burn tokens:**
   ```javascript
   await degenGamingToken.methods.burn(<amount>).send({from: <holder-address>});
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

For common issues or troubleshooting, refer to the following commands:

* **Check if contract is deployed:**
  - Verify the contract deployment on Snowtrace or a similar blockchain explorer.

* **Get help with Remix commands:**
  - Use the Remix IDE documentation or the help section within the IDE.

## Authors

Suhani Bajjard
