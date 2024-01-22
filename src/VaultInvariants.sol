// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract VaultInvariants {
    address internal _vault;
    address internal _asset;

    function _setVault(address vault_) internal { _vault = vault_; }
    function _setAsset(address asset_) internal { _asset = asset_; }

    function check_depositIncreasesShares(uint256 assets) public virtual;
    function check_noFreeMoneyRoundTrip(uint256 assets) public virtual;
    function check_exchangeRateBounds(uint256 assets) public virtual;
}
