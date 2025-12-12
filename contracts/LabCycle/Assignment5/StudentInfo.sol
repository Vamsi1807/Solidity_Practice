// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRegistry {
    address public teacherAddress;

    struct Student {
        string name;
        uint age;
        uint studentClass;
        bool exists;
    }

    mapping(uint => Student) public students;

    modifier onlyTeacher() {
        require(msg.sender == teacherAddress, "Permission denied: Only the teacher can perform this action.");
        _;
    }

    constructor() {
        teacherAddress = msg.sender;
    }

    function addOrEditStudent(
        uint _id,
        string memory _name,
        uint _age,
        uint _class
    ) public onlyTeacher {
        require(_id > 0, "Student ID must be greater than zero.");

        students[_id] = Student(
            _name,
            _age,
            _class,
            true
        );
    }

    function getStudentDetails(uint _id) public view returns (string memory name, uint age, uint studentClass) {
        Student memory s = students[_id];
        
        require(s.exists, "Student with this ID does not exist.");

        return (s.name, s.age, s.studentClass);
    }

    function transferTeacherRole(address _newTeacher) public onlyTeacher {
        require(_newTeacher != address(0), "New teacher address cannot be zero.");
        teacherAddress = _newTeacher;
    }
}