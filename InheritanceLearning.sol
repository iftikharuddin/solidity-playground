// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // version

import "./SimpleStorage.sol";

// Contract Inheritance Storage
contract InheritanceLearning is SimpleStorage {

    // overrides
    // virtual override
    function setFavoriteNumber(uint256 _newNumber) public override {
        favoriteNumber = _newNumber + 9;
    }
}