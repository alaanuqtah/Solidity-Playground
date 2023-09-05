// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{

    uint256 public favNumber;
    Person[] public listOfPeople;
    mapping(string => uint) public nameToNum;

    struct Person{
            string name;
            uint256 favoriteNumber;
    }

    function setFavNumber(uint256 _favNumb) virtual public {
        favNumber =_favNumb;
    }

    function addPerson(string memory _name,uint256 _favNum) public{
        listOfPeople.push(Person(_name,_favNum)); //list
        nameToNum[_name]=_favNum; //mapping
    }

  
}