// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract PracticingSolidity {

    function testing(uint256 _flag) public pure {
        require(_flag == 1); // require use less gas than assert

        if(_flag == 1) {
            revert();
        }

        // assert(msg.sender == owner); // assert uses more gas
    }

    function newFunction(string memory _value, uint256 _number) public pure returns (uint256) {
        if (keccak256(abi.encodePacked(_value)) == keccak256(abi.encodePacked("sol"))) {
            revert("value is greater than 0");
        }
        return _number;
    }


}

contract MyModifiers {
     // let's play with Modifier
    uint256 public num = 0;
    bool public paused = false;
    address public owner;

    constructor(){
        owner = address(msg.sender);
    }

    modifier isPaused() {
        require(paused == false, "Contract is paused");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setPaused() public {
        paused = true;
    }

    function addToNum() public isPaused onlyOwner {
        num++;
    }

    function subToNum() public isPaused onlyOwner {
        num--;
    }
}