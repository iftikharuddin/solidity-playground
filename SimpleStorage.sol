// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // version

// Contract Simple Storage
contract SimpleStorage {
    // if you don't specifiy visibility specifier the default will be internal
    uint256 public favoriteNumber; // deafult value for uint256 is zero

    function setFavoriteNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // View, pure functions don’t cost gas but if you call it in a setter
    // function which cost gas, then it will add gas cost
    // view, pure
    function getFN() public view returns(uint256) {
        return favoriteNumber;
    }
}