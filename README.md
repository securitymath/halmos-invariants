# halmos-invariants

Reusable [Halmos](https://github.com/a16z/halmos) invariant templates for formal verification of ERC-4626 tokenized vaults.

## Overview

- **Share monotonicity** — deposits always increase share balance
- **No free money** — deposit-withdraw round trips are never profitable
- **Exchange rate bounds** — share price stays within expected range
- **Flash loan resistance** — no single-transaction profit extraction via donation

## Contracts

| File | Description |
|------|-------------|
| `VaultInvariants.sol` | Base abstract contract with setup helpers |
| `ShareMonotonicity.sol` | Deposit/withdraw monotonicity checks |
| `FlashLoanResistance.sol` | Donation attack resistance verification |

## Usage

```solidity
import {VaultInvariants} from "src/VaultInvariants.sol";
contract MyVaultTest is VaultInvariants {
    function setUp() public {
        _setVault(address(myVault));
        _setAsset(address(usdc));
    }
}
```

```
halmos --contract MyVaultTest --function check_
```

🚧 Work in progress — extracted from internal audit tooling.

## License

MIT
