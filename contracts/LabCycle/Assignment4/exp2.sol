// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PersonArray {
    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public {
        people.push(Person(_name, _age));
    }

    function getPerson(uint index) public view returns (string memory, uint) {
        require(index < people.length, "Index out of range");
        Person memory p = people[index];
        return (p.name, p.age);
    }
}
