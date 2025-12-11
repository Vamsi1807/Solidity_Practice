//SPDX-Lisence-Identifer:GPL-3.0
pragma solidity ^0.8.14;

contract MappingDemo{
    struct student{
        uint sno;
        string name;
        uint[] marks;
    }

    mapping(uint => student) public student{
        
    }
}