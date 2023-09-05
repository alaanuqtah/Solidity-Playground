// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
 
    SimpleStorage[] public listOfContracts;

    function createSimpContract() public {
        listOfContracts.push(new SimpleStorage());
    }

    function sfStore(uint256 _SSindex, uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface 
        listOfContracts[_SSindex].setFavNumber(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _SSindex) public view returns(uint256){
        return listOfContracts[_SSindex].favNumber();
    }

}