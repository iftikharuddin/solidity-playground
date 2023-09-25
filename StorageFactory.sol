// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // version

import "./SimpleStorage.sol";

// This contract has a function which can deploy other contracts :)
// Contract Storage Storage
contract StorageFactory {

    // type visibility variableName
    SimpleStorage public simpleStorage;

    // a function to deploy Simple Storage Contract
    function deploySimpleStorage() public {
        simpleStorage = new SimpleStorage();
    }

}