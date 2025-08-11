// SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.14;

contract SumOfEle{
    uint[12] arr = [2, 433, 1, 4, 3, 235, 656, 9, 87, 6, 50, 15];

    function sumOfEle()public view returns(uint){
        uint sum = 0;
        for (uint8 i=0; i<arr.length;i++) 
        {
            sum += arr[i];
        }

        return sum;
    }
}