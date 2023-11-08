// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TipJar {
    address public owner;

    event TipRecieved(address indexed tipper, uint256 amount);
    event TipWithdrawn(address indexed owner, uint256 amount);

    constructor() {
        
    }
}
