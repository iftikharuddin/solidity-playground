// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // version

import "./SimpleStorage.sol";

// Contract Storage Storage
contract StorageFactory {

    // type visibility variableName
    SimpleStorage[] public listOfContracts;

    // a function to deploy Simple Storage Contract
    function deploySimpleStorage() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfContracts.push(newSimpleStorage);
    }

    // Set Fav Number from this contract in Simple Storage var
    function setFavNumber(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // get instance of the contract and set fav number
        listOfContracts[_simpleStorageIndex].setFavoriteNumber(_newSimpleStorageNumber);
    }

    // get the fav number from Simple Storage contract
    function getFavNumber(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfContracts[_simpleStorageIndex].getFN();
     }
}