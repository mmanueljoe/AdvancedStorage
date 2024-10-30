// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract AdvancedStorage{

    // this is a storage variable ( persistently storing values)
    uint256 favoriteNumber;

    event NumberUpdated(uint256 favoriteNumber, address updatedBy);

    // storing names and favoriteNumber using mapping
    mapping(string => uint256) nameToFavoriteNumber;

    // mapping names with favorite numbers
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function storeNumber(uint256 newNumber) public{
        favoriteNumber = newNumber;
        emit NumberUpdated(favoriteNumber, msg.sender);
    }

    // this function uses memory variable for a simple calculation
    function useMemoryForCalc(uint256 someNumber) public pure returns(uint256){
        uint256 product = someNumber * 2;
        return product;
    }


    // this function uses a calldata variable
    function concatString(string calldata someStr) public pure returns (string memory){
        string memory concatenatedStr = string(abi.encodePacked(someStr, " is an immutable string"));
        return concatenatedStr;
    }
}