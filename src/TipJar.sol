// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TipJar {
    address public owner;

    event TipRecieved(address indexed tipper, uint256 amount);
    event TipWithdrawn(address indexed owner, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner may call this function.");
        _;
    }

    function tip() public payable {
        require(msg.value > 0, "You have to pay a tip");
        emit TipRecieved(msg.sender, msg.value);
    }

    function withdrawTips() public onlyOwner {}
}
