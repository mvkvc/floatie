import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: {
    version: '0.8.10',
    settings: {
      evmVersion: 'london',
      optimizer: { enabled: true, runs: 5000 },
    },
  },
  networks: {
    hardhat: {
      blockGasLimit: 10000000,
      gasPrice: 10,
      hardfork: 'istanbul',
    },
  },
  mocha: {
    timeout: 200000
  }
};

export default config;