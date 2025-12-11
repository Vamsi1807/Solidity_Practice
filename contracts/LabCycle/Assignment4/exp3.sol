// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonMapping {
    struct Person {
        string name;
        uint age;
    }

    mapping(address => Person) public persons;

    function setPerson(string memory _name, uint _age) public {
        persons[msg.sender] = Person(_name, _age);
    }

    function getMyDetails() public view returns (string memory, uint) {
        Person memory p = persons[msg.sender];
        return (p.name, p.age);
    }
}
