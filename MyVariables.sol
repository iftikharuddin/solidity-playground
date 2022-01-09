// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyVariables {

    uint256 public number = 29; // state variable
    bool private paused = true; // state variable
    uint256 internal time = block.timestamp; // state variable saving a global variable

    function myFunc() public view {
        // uint256 _newNumber = 333; // local variable
        // bool letsPause = true; // local variable
        // address theSenderAddy = msg.sender; // sending address
    }

}

// This contract is inherting MyVariables contract
contract InheritedContract is MyVariables  {
    uint256 public justRandomNumber = 3345;
    uint256 public theTime = time;
}