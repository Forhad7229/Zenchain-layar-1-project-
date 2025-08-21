// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet {
    mapping(address => bool) public claimed;

    function claim() public {
        require(!claimed[msg.sender], "Already claimed");
        claimed[msg.sender] = true;
        // Token logic placeholder
    }
}
