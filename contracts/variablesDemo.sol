//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract VariableDemo{
    int256 public immutable a; //direct initialization
    int8 public b;
    constructor(){
        b = 100;
        a = 100;
    }

    function setValue(int8 _c) public {
        b = _c;
    }

    function getValue() public view returns(int256){
        return a;
    }
}