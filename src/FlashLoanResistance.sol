// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract FlashLoanResistance {
    function check_donationAttackUnprofitable(uint256 depositAmount, uint256 donationAmount) public virtual;
}
