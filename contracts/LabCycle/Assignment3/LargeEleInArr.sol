// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract LargeEle{
    uint[12] arr = [2,433,1,4,3,235,656,9,87,6];

    function largeEle() public view returns(uint){
        uint max = 0;
        for (uint i=0; i<arr.length;i++) 
        {
            if(arr[i]>max)
                max = arr[i];
        }

        return max;
    }
}