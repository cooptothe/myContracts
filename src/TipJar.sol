// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";

contract TipJar is ContractMetadata {
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

    function withdrawTips() public onlyOwner {
        uint256 contractBalance = address(this).balance;
        require(contractBalance > 0, "No tips received.");

        payable(owner).transfer(contractBalance);
        emit TipWithdrawn((owner), contractBalance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

        function _canSetContractURI() internal view virtual override returns (bool){
        return msg.sender == owner;
    }
}
