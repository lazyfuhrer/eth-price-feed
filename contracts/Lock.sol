// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./src/interfaces/AggregatorV3Interface.sol";

contract PriceFeed
{
    AggregatorV3Interface internal priceFeed;

    constructor()
    {
        priceFeed = AggregatorV3Interface(
            0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        );
    }

    function getLatestPrice() public view returns (int)
    {
        ( , int price, , , ) = priceFeed.latestRoundData();
        return price;
    }
}