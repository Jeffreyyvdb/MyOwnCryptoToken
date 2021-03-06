var JeremyBuddingToken = artifacts.require("./JeremyBuddingToken.sol");
var JeremyBuddingTokenSale = artifacts.require("./JeremyBuddingTokenSale.sol");

module.exports = function (deployer) {
  deployer.deploy(JeremyBuddingToken, 1000000).then(function(){
  	// Token Price is 0.001 ether
	var tokenPrice = 1000000000000000 // in wei
  	return deployer.deploy(JeremyBuddingTokenSale, JeremyBuddingToken.address,tokenPrice);
  });
};
