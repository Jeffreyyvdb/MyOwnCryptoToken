pragma solidity ^0.5.16;

contract JeremyBuddingToken {
	string public name = "Jeremy Budding Token";
	string public symbol = "JBT";
	string public standard = "Jeremy Budding Token v1.0";
	uint256 public totalSupply;

	mapping(address => uint256) public balanceOf;

	constructor(uint256 _initialSupply) public {
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
		// allocate the initial supply
	}
}