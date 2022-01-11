// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyEvents {

  event CreatedNFT(address indexed user, uint256 id, uint256 dna);

  function createNFT(uint256 _id, uint256 _dna) public {
      emit CreatedNFT(msg.sender, _id, _dna);
  }

}

contract MyConstructor {

  string public name;

  constructor(string memory _name) {
      name = _name;
  }

}

contract MySecondConstructor is MyConstructor {
    constructor(string memory _name) MyConstructor(_name) {}
}