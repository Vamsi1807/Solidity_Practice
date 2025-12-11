// SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.14;

contract SumOfDigits{

    function sumOfDigits(int16 n)public pure returns(int16){
        
        
        int16 sum = 0;
        
        
        while(n!=0){
            sum += n%10;
            n /= 10;
        }
        return sum;
    }

}