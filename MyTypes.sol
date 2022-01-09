// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

// Exploring different types in sol
contract MyTypes {

    string public test = "test";

    bool public status = false;

    int256 public number = 223333;

    uint8 private number1 = 38;

    address private myWalletAddres;

    address internal myWalletAddresNew = address(0x8f505b39a533cE343321341e8CA7102E6b9571e3);

    address payable user1 = payable(0x8f505b39a533cE343321341e8CA7102E6b9571e3);

}