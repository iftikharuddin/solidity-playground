// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // version

// Contract Simple Storage
contract SimpleStorage {
    // if you don't specifiy visibility specifier the default will be internal
    uint256 public favoriteNumber; // deafult value for uint256 is zero

    // let's define a custom var
    struct Person {
        string name;
        uint256 fNumber;
    }

    // dynamic array
    Person[] public listOfPeople;

    // let's play with mappings
    mapping (string => uint256) public nameToFavoriteNumber;

    function setFavoriteNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // View, pure functions don’t cost gas but if you call it in a setter
    // function which cost gas, then it will add gas cost
    // view, pure
    function getFN() public view returns(uint256) {
        return favoriteNumber;
    }

    // add person name and favorite number to Person Array
    // Calldata can’t be modified while memory can be modified, both are temp storing vars
    function addPerson(string memory _name, uint256 _fNumber) public {
        listOfPeople.push(Person(_name, _fNumber));
        nameToFavoriteNumber[_name] = _fNumber;
    }
}