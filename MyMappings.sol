// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyMappings {

    mapping(uint256 => address) nfts;
    uint256 public counter = 0;

    function getOwnerNFT(uint256 _id) public view returns(address) {
        return nfts[_id];
    }

    function mintNFT(address _address) public {
        nfts[counter] = _address;
        counter++;
    }
}