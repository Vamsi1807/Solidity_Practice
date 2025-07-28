//SPDX-Lisence-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract Swap{

    function swap_third(int a, int b)public pure returns(int, int){
        int t;
        t=a;
        a=b;
        b=t;
        

        return(a,b);
    }

    function swap_two(int a,int b)public pure returns(int, int){
        a=a+b;
        b=a-b;
        a=a-b;
        return (a,b);
    }
}