pragma solidity ^0.5.16;

contract JeremyBuddingToken {
	string public name = "Jeremy Budding Token";
	string public symbol = "JBT";
	string public standard = "Jeremy Budding Token v1.0";
	uint256 public totalSupply;

	event Transfer(
		address indexed _from,
		address indexed _to,
		uint256 _value
	);

	mapping(address => uint256) public balanceOf;

	constructor(uint256 _initialSupply) public {
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
		// allocate the initial supply
	}

	// Transfer
	function transfer(address _to, uint256 _value) public returns (bool succes){
	require(balanceOf[msg.sender] >= _value);
	balanceOf[msg.sender] -= _value;
	balanceOf[_to] += _value;

	emit Transfer(msg.sender, _to, _value);

	return true;
	}
}