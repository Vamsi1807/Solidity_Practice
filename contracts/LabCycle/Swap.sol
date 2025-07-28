//SPDX-Lisence-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract Swap{

    function swap(int a, int b)public pure returns(int, int){
        int t;
        t=a;
        a=b;
        b=t;
        

        return(a,b);
    }
}