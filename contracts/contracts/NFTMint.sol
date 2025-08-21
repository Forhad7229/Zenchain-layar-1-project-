// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMint is ERC721 {
    uint256 public tokenId;

    constructor() ERC721("ZenNFT", "ZNFT") {}

    function mintNFT(address to) public {
        tokenId++;
        _mint(to, tokenId);
    }
}
