// contracts/OceanToken.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Capped} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";


contract OceanToken is ERC20Capped {
    address payable public owner;
    constructor(uint256 cap) ERC20("OceanToken","OCT") ERC20Capped(cap* (10**decimals())){
        owner = payable(msg.sender);
        _mint(owner, 70000000* (10**decimals()));
    }
}