var JeremyBuddingToken = artifacts.require("./JeremyBuddingToken.sol");

module.exports = function (deployer) {
  deployer.deploy(JeremyBuddingToken, 1000000);
};