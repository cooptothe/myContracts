// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";

contract MessageBoard is ContractMetadata {
    address public owner;
    string[] public messages;

    event NewMessage(address indexed sender, string message);

    constructor() {
        owner = msg.sender;
    }

    function postMessage(string memory message) public {
        messages.push(message);
        emit NewMessage(msg.sender, message);
    }

    function getMessageCount() public view returns (uint256) {
        return messages.length;
    }

    function getMessage(uint256 index) public view returns (string memory) {
        require(index < messages.length, "Index out of bounds.");
        return messages[index];
    }

    function _canSetContractURI() internal view virtual override returns (bool){
        return msg.sender == owner;
    }
}
