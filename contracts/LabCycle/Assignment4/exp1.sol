// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SinglePerson {
    struct Person {
        string name;
        uint age;
    }

    Person public person;

    function createPerson(string memory _name, uint _age) public {
        person = Person(_name, _age);
    }

    function updatePerson(string memory _name, uint _age) public {
        person.name = _name;
        person.age = _age;
    }

    function getPerson() public view returns (string memory, uint) {
        return (person.name, person.age);
    }
}
