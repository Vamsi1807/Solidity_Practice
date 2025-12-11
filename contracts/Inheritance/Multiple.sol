// SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.14;

contract A{
    uint8 a = 30;
    uint8 b = 20;

    function add()public view returns(uint8){
        return a+b;
    }
}


contract B {
    uint8 c = 30;
    uint8 d = 20;
    function subtract()public view returns(uint8){
        
        return c-d;
    }
}

contract C {
    uint8 e = 30;
    uint8 f = 20;
    function multiply()public view returns(uint8){
        return e*f;
    }
}

contract D is A,B,C{
    function print()public view returns(uint8,uint8,uint8){
        return (add(),subtract(),multiply());
    }
}