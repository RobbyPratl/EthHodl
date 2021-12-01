var EthHodl = artifacts.require('./contracts/EthHodl.sol');
module.exports = function(deployer) {
    deployer.deploy(EthHodl);
}