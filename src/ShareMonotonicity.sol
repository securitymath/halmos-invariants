// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract ShareMonotonicity {
    function check_depositMonotonicity(uint256 assets) public virtual;
    function check_withdrawMonotonicity(uint256 shares) public virtual;
}
