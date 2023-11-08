// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract MessageBoard {
    address public owner;
    string[] public messages;

    event NewMessage(address indexed sender, string message);

    constructor() {
        owner = msg.sender;
    }


}