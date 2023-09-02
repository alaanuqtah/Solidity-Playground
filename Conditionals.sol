// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyContract{
    uint[] public numbers;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addNumber(uint _number) public{
        numbers.push(_number);
    }

     function countEven() public view returns(uint){
       uint countEvn=0;

       for(uint i=0; i<numbers.length; i++){
           if(isEven(numbers[i])){
               countEvn++;
           }
       }
       return countEvn;
    }

    function isEven(uint n) public pure returns(bool){
        if(n%2==0){
            return true;

        }else{
            return false;
        }
    }

     function isOwner() public view returns (bool) {
        return (msg.sender == owner);
    }
     

}
