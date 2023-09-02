// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {

    mapping(uint256 => Users) public users;
    mapping(address => mapping(uint256 => Users)) public Contacts;

    struct Users {
        string name;
        string age;
    }

    //mapping with custom data types (structs) 
    function addUser(
        uint256 _id,
        string memory _name,
        string memory _age
    ) public {
        users[_id] = Users(_name, _age);
    }

    //nested mapping
    function addContact(
        uint256 _id,
       string memory _name,
        string memory _age
    ) public {
        Contacts[msg.sender][_id] =  Users(_name, _age);
    }

    // after deployment the Contacts are intialized with the required parameters: id, name and age
    // to access the Contacts the Address of the user and id are required 
    // the address must be the address used to enter the data into the Users map
}