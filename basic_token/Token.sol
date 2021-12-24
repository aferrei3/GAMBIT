// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./ERC20.sol";

contract GAMBIT is ERC20 {
    address public owner;

    constructor() ERC20('GAMBIT', 'GBIT') {
        _mint(msg.sender, 100000 * 10 ** 18);
        owner = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == owner, "Only the coin owner can mint more coins");
        _mint(to, amount);
    }
}