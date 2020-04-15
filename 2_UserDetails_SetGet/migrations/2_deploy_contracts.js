const UserDetails = artifacts.require('./UserDetails.sol');

module.exports = function(deployer) {
    deployer.deploy(UserDetails);
}