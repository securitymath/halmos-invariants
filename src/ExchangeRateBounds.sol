// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract ExchangeRateBounds {
    uint256 internal constant MAX_RATE_CHANGE_BPS = 100;
    function check_exchangeRateStability(uint256 assets) public virtual;
}
