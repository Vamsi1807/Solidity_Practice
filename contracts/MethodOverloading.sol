//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract FunctionDemo{
    int a=10;
    function getSum(int b,int c)public view returns(int){
        int sum = a+b+c;
        return sum;
    }

    function getSum(int b,int c,int d)public view returns(int){
        int sum = a+b+c+d;
        return sum;
    }
    
}