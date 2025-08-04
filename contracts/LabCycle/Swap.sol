//SPDX-Lisence-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract Swap{

    function swap_third(int8 a, int8 b)public pure returns(int8, int8){
        int8 t;
        t=a;
        a=b;
        b=t;
        

        return(a,b);
    }

    function swap_two(int8 a,int8 b)public pure returns(int8, int8){
        a=a+b;
        b=a-b;
        a=a-b;
        return (a,b);
    }
}