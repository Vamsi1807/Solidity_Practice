// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract StringExample{
    string public s1;
    string public s2;

    function setValues(string memory _s1, string memory _s2) public {
        s1 = _s1;
        s2 = _s2;
    }

    function retrieveValues()public view returns(string memory, string memory){
        return (s1,s2);
    }

    function concatenate()public view returns(string memory){
        return string.concat(s1," and ",s2);
    }

    function concatenateString()public view returns(string memory){
        return (string(abi.encodePacked(s1," and ",s2)));
    }

    function compare() public view returns(bool){
        return(keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2)));
    }

    function returnLength()public view returns(uint,uint){
        return(bytes(s1).length, bytes(s2).length);
    }
}