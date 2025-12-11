// SPDX-License-Identifier:GPT-3.0
pragma solidity ^0.8.14;

contract Factorial{
    function factorial(int8 n)public pure returns(int16){
        int16 fact = 1;
        
        while(n!=0){
            fact *= n;
            n--;
        }

        return fact;
    }
}