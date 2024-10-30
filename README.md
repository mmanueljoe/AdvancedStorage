
# AdvancedStorage Smart Contract

This project is a continuation of Solidity programming fundamentals, focusing on implementing mappings, events, and data location types in a smart contract. The enhancements were added to a SimpleStorage contract to improve data handling efficiency, event logging, and storage management, ultimately deepening our understanding of Solidity.

## Features

1. **Mappings**: 
   - A mapping was added to associate names with favorite numbers for quick, efficient data storage and retrieval. 
   - The `addPerson` function was modified to add name-number pairs directly into the mapping.

2. **Events**: 
   - An event called `NumberUpdated` was created to log whenever a user’s favorite number is updated, enabling better interaction with external applications.
   - The `storeNumber` function now emits the `NumberUpdated` event, ensuring key actions are logged.

3. **Data Locations (Storage, Memory, Calldata)**:
   - **Storage**: Persistent storage was used for the main favorite number variable, allowing for continuous data availability across transactions.
   - **Memory**: A temporary variable was created within a function to demonstrate the use of memory for non-persistent data.
   - **Calldata**: A new function utilizes calldata for an input parameter, optimizing gas usage by avoiding data modification.

## Challenges and Solutions

- **Error Deploying on Remix JavaScript VM (London)**: During testing, an `invalid opcode` error occurred when deploying on the Remix JavaScript VM (London). I belive this issue may stem from compatibility concerns related to the London hard fork.
  - **Solution**: Switching to **JavaScript VM (Cancun)** allowed for successful deployment and testing.

- **Understanding Data Locations**: Differentiating between storage, memory, and calldata required attention to the specific use cases of each, as well as testing gas costs and behavior differences.

## Deployment

The contract was successfully compiled and tested in the Remix JavaScript VM (Cancun). The project is available in this GitHub repository for further exploration.

--- 