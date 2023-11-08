// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract CoinFlip {
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
}
