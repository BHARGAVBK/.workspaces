// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./1_Storage.sol";

contract StorageFactory
{
    //Creating Array of Contract
    SimpleStorage[] public simpleStorageArray;

    //function that create simpleStorage object 
    //and store in memory every time its called
    function creatStorage()public
    {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    //set parent contract global variable
    function sfSetGlobalFavNum(uint256 _simpleStorageIndex, uint256 _favGlobalNum)public
    {
        simpleStorageArray[_simpleStorageIndex].setGlobalFavNum(_favGlobalNum);
    }

    //retrive favNumber value of parent cotract
    function sfRetrieve(uint256 _simpleStorageIndex)public view returns(uint256)
    {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
        //simpleStorageArray[].favNumber;
    }
}