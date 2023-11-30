//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    uint256 a;

    function requireS(uint256 _i) public pure {
        require(_i > 50, "Input must be greater than 50");
    }

    function assertS() public view {
        assert(a == 0); // Only one parameter
    }

    function revertS(uint256 _x) public pure {
        if (_x < 25) {
            revert("Input Must be greater than 25");
        }
    }
}
