// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage
{
    uint256 public favNumber;
    //people public person = people({favoriteNumber: 2,name: "BK"});

    //function to set global variable favNumber
    function setGlobalFavNum(uint256 _favNumberGlobal)public virtual
    {
        favNumber = _favNumberGlobal;
    }

    //creating mapping
    mapping(string => uint256)public nameToFavoriteNumber;

    //creating Struct
    struct People
    {
        uint256 favoriteNumber;
        string name;
    }
    //Struct datatype array
    People[] public people;

    //function to add name and favorite number in array and mapping
    function addPeople(string memory _name,uint256 _favNum) public 
    {
        //People memory newPeople = People({favoriteNumber:_favNum,name:_name});
        people.push(People(_favNum,_name));
        nameToFavoriteNumber[_name] = _favNum;
    }

    //view, pure
    function retrieve() public view returns(uint256)
    {
        return favNumber;
    }

}