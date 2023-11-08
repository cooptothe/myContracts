// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TipJar {
    address public owner;

    event TipRecieved(address indexed tipper, uint256 amount);
    event TipWithdrawn(address indexed owner, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function tip() public payable {
        require(msg.value > 0, "You have to pay a tip");
        emit TipRecieved(msg.sender, msg.value);
    }
}
