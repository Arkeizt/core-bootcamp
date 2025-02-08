// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract disnaughts is ERC721URIStorage {
    uint256 tokenId = 1;

    constructor() ERC721("disnaughts", "DSN") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://gist.githubusercontent.com/Arkeizt/875d056c0427d2b228411ff2e4976cfd/raw/1bd3dc1c5e50d57d0f3b96c378d0f6414304ebe3/metadata.json"
        );
        tokenId++;
    }
}