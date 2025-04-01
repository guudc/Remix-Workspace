// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "../tokens/airdrop.sol";

contract ObiNFT is ERC721URIStorage, Airdrop {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("OBINFT", "OBI") Airdrop(address(this), msg.sender, 1) {
      uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "");
        _tokenIds.increment();
        _approve(address(this), 0, msg.sender);
    }
    function sartAirdrop(uint256[] calldata unitOfToken) public returns(bool){
        _startAirdrop(unitOfToken);
    }

    function whiteListAddress(address[] calldata _address) public  returns(bool) {
        _whiteListAddress(_address);
    }
    function reset() public  returns(bool) {
        _resetAirdrop();
    }
}