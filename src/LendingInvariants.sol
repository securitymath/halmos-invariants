// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Lending Protocol Invariant Templates
/// @author Security Math
/// @notice Reusable Halmos invariant checks for lending protocol verification

abstract contract LendingInvariants {

    /// @notice Total borrows must never exceed total deposits
    function check_borrowsLeqDeposits(
        uint256 totalDeposits,
        uint256 totalBorrows
    ) internal pure {
        assert(totalBorrows <= totalDeposits);
    }

    /// @notice Liquidation must always improve protocol health factor
    function check_liquidationImprovesHealth(
        uint256 healthBefore,
        uint256 healthAfter
    ) internal pure {
        assert(healthAfter >= healthBefore);
    }

    /// @notice Interest rate must be monotonically non-decreasing
    function check_interestMonotonic(
        uint256 rateBefore,
        uint256 rateAfter
    ) internal pure {
        assert(rateAfter >= rateBefore);
    }

    /// @notice Deposit-withdraw round trip must not be profitable
    function check_noFreeMoneyRoundTrip(
        uint256 balanceBefore,
        uint256 balanceAfter
    ) internal pure {
        assert(balanceAfter <= balanceBefore);
    }

    /// @notice Collateral factor must be strictly less than 100%
    function check_collateralFactorBound(
        uint256 collateralFactorBps
    ) internal pure {
        assert(collateralFactorBps < 10000);
    }

    /// @notice Exchange rate must be positive when supply exists
    function check_exchangeRatePositive(
        uint256 totalSupply,
        uint256 exchangeRate
    ) internal pure {
        if (totalSupply > 0) {
            assert(exchangeRate > 0);
        }
    }
}