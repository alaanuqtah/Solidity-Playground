// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    //overriding 
    function setFavNumber(uint256 _newNumb) override public{
        favNumber=_newNumb+5;
    }

}