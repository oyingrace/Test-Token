// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Standard ERC20 that mints 9 TST tokens to the caller
contract TestToken is ERC20 {
    constructor() ERC20("Test", "TST") {
        _mint(msg.sender, 9 * 10 ** uint(decimals()));
    }
}
