// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./1_Storage.sol";

contract OverrideStorage is SimpleStorage
{
    //override function
    function setGlobalFavNum(uint256 _favNumberGlobal)public override
    {
        favNumber = _favNumberGlobal + 5;        
    }
}
