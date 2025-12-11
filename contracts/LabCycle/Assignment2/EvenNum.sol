//SPDX-Lisence-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract EvenNum{

    function even(int n)public pure returns(int8){
        if(n%2==0)
            return 1;
        else 
            return 0;
    }
}