// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

/// @title Iftikhar Best Contract
/// @author iftikhar.eth
/// @dev wassup niggo?

contract MyContract {

    string public name = "John Doe";
    uint256 public presaleStatus = 1;

    /// @notice update the static name
    function updateName(string memory _name) public {
        name = _name;
    }

    /// @notice update presale status, by default presale is open/on
    function closePresale(uint256 _value) public {
        presaleStatus = _value;
    }
}