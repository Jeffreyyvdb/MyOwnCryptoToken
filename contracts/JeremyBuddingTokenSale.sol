pragma solidity ^0.5.16;

import "./JeremyBuddingToken.sol";

contract JeremyBuddingTokenSale {
	address admin;
	JeremyBuddingToken public tokenContract;
	uint256 public tokenPrice;

	constructor(JeremyBuddingToken _tokenContract, uint256 _tokenPrice) public {
		admin = msg.sender;
		tokenContract = _tokenContract;
		tokenPrice = _tokenPrice;
	}	
}
