// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";

contract CoinFlip is ContractMetadata {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    
    enum CoinSide {
        HEAD,
        TAILS
    }
    enum FlipResult {
        WIN,
        LOSE
    }

    event Result(
        address indexed player,
        CoinSide chosenSide,
        FlipResult result
    );

    function flipCoin(CoinSide chosenSide) public {
        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % 2;

        CoinSide result = CoinSide(randomNumber);

        FlipResult flipResult = (chosenSide == result) ? FlipResult.WIN : FlipResult.LOSE;

        emit Result(msg.sender, chosenSide, flipResult);
    }

    function _canSetContractURI() internal view virtual override returns (bool){
        return msg.sender == owner;
    }
}
