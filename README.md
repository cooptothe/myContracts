# Solidity Smart Contracts

This repository contains a collection of Solidity smart contracts for various use cases. These contracts are written in Solidity, a popular programming language for developing smart contracts on the Ethereum blockchain.

## Contracts

### MessageBoard

The `MessageBoard` contract allows users to post messages and store them on the Ethereum blockchain. It includes the following functionalities:

- `postMessage(string memory message)`: Allows users to post a message to the board.
- `getMessageCount()`: Returns the total number of messages posted.
- `getMessage(uint256 index)`: Returns a message by its index.
- `owner`: The address of the contract owner.

### TipJar

The `TipJar` contract is designed for receiving and managing tips. It includes the following functionalities:

- `tip()`: Allows users to send a tip in Ether to the contract.
- `withdrawTips()`: Allows the contract owner to withdraw all the tips received.
- `getBalance()`: Returns the current balance of the contract.
- `owner`: The address of the contract owner.

### CoinFlip

The `CoinFlip` contract is a simple coin flip game. Users can choose either "HEAD" or "TAILS," and the contract generates a random result. If the user's choice matches the result, they win; otherwise, they lose. It includes the following functionality:

- `flipCoin(CoinSide chosenSide)`: Allows users to participate in the coin flip game.
- `Result` event: Emits the result of the coin flip.

### ProfileStatus

The `ProfileStatus` contract allows users to set and update their profile status messages on the Ethereum blockchain. It includes the following functionalities:

- `createStatus(string memory initialStatus)`: Allows users to create an initial status message.
- `updateStatus(string memory newStatus)`: Allows users to update their status message.
- `getStatus(address wallet)`: Returns the status message of a specific wallet address.
- `StatusCreated` event: Emits when a new status is created.
- `StatusUpdated` event: Emits when a status is updated.
- `owner`: The address of the contract owner.

### HelloWorld

The `HelloWorld` contract is a simple contract that returns a "Hello World" message when queried.
