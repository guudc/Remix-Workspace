// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../tokens/airdrop.sol";

contract BUSD is ERC20, Airdrop(address(this), msg.sender, 0) {
    
    constructor() ERC20("Binance USD", "BUSD") {
        _mint(msg.sender, 100000000000000000000000000);
        _approve(msg.sender, address(this), 10000000000000000000000);
    }

    function mint(uint amount) external returns(bool) {
        _mint(msg.sender, amount);
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