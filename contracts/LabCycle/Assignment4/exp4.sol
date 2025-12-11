// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarOwner {
    struct Person {
        string name;
        uint age;
    }

    struct Car {
        string model;
        uint year;
        Person owner;
    }

    Car public car;

    function setCar(string memory _model, uint _year, string memory _ownerName, uint _ownerAge) public {
        car = Car(_model, _year, Person(_ownerName, _ownerAge));
    }

    function getCar() public view returns (string memory, uint, string memory, uint) {
        return (car.model, car.year, car.owner.name, car.owner.age);
    }
}
