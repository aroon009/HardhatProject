/** @type import('../node_modules/hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-waffle")

const ALCHEMY_API_KEY = "";

const GOERLI_PRIVATE_KEY = "";

module.exports = {
  solidity: "0.8.9",


  networks: {
    goerli: {
      url: `https://eth-goerli.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [],
    },
  },
};
