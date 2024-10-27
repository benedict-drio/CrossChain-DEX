# Cross-Chain DEX Smart Contract

A decentralized exchange (DEX) smart contract implementation for Stacks blockchain that enables automated market making, liquidity provision, and token swaps. This contract implements standard AMM (Automated Market Maker) functionality with additional cross-chain capabilities.

## Features

- Automated Market Maker (AMM) functionality
- Liquidity pool creation and management
- Token swapping with configurable slippage protection
- Liquidity provider (LP) token minting and management
- Emergency shutdown capability
- Protocol fee mechanism (0.3% total fee, split between protocol and LP)
- NFT trait implementation for LP tokens

## Technical Specifications

### Fee Structure

- Total Fee: 0.3% (30 basis points)
  - Protocol Fee: 0.03% (3 basis points)
  - LP Fee: 0.27% (27 basis points)

### Core Functions

#### Pool Management

- `create-pool`: Create a new liquidity pool for a token pair
- `add-liquidity`: Add liquidity to an existing pool
- `get-pool-details`: Retrieve pool information
- `get-provider-shares`: Get LP token information for a provider

#### Trading

- `swap-exact-tokens`: Execute a token swap with slippage protection
- `calculate-swap-output`: Calculate expected output for a swap

#### Administration

- `set-contract-owner`: Transfer contract ownership
- `toggle-emergency-shutdown`: Enable/disable emergency shutdown

### Error Codes

| Code | Description          |
| ---- | -------------------- |
| u100 | Not authorized       |
| u101 | Invalid amount       |
| u102 | Insufficient balance |
| u103 | Pool not found       |
| u104 | Slippage too high    |
| u105 | Invalid token pair   |
| u106 | Zero liquidity       |

## Usage Examples

### Creating a New Pool

```clarity
(contract-call? .dex create-pool token-x token-y initial-x-amount initial-y-amount)
```

### Adding Liquidity

```clarity
(contract-call? .dex add-liquidity
    pool-id
    token-x
    token-y
    amount-x
    amount-y
    min-shares)
```

### Executing a Swap

```clarity
(contract-call? .dex swap-exact-tokens
    pool-id
    token-in
    token-out
    amount-in
    min-amount-out
    is-x-to-y)
```

## Security Considerations

1. The contract implements slippage protection to prevent front-running
2. Emergency shutdown mechanism for crisis management
3. Access control for administrative functions
4. Minimum liquidity requirements to prevent manipulation
5. Contract owner permissions are limited to essential functions

## Dependencies

- SIP-010 Fungible Token Trait
- NFT Trait Implementation

## Development and Testing

To deploy and test this contract:

1. Ensure you have the Clarity CLI installed
2. Deploy required trait contracts first
3. Deploy this contract
4. Run test suite

## License

This smart contract is open source and available under the MIT license.

## Contributing

Contributions are welcome! Please submit pull requests with:

- Detailed description of changes
- Updated tests
- Documentation updates
