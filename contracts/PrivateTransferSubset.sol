// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

import "./PrivateTransfer.sol";
import "hardhat/console.sol";

interface IVerifierSubset {
    function verify(bytes calldata) external view returns (bool);
}

contract PrivateTransferSubset is PrivateTransfer {
    IVerifierSubset public verifierSubset;

    constructor(
        IVerifierSubset _verifierSubset,
        IVerifier _verifier,
        IHasher _hasher,
        uint256 _amount,
        uint32 _merkleTreeHeight
    ) PrivateTransfer(_verifier, _hasher, _amount, _merkleTreeHeight) {
        verifierSubset = _verifierSubset;
    }

function withdrawSubset(
        bytes32 _root,
        bytes32 _rootSubset,
        bytes calldata proof,
        bytes calldata proofSubset
    ) external payable nonReentrant {
        bool proofResultSubset = verifierSubset.verify(proofSubset);
        require(proofResultSubset, "Invalid subset proof");

        super.withdraw(proof, _root);
    }
}
