// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract ArraysExample{
    uint8[4] public arr = [1,2,3,4];
    uint[] public arr1;
 
    function getFixedArrayValues()public view returns(uint8[4] memory){
        return arr;
    }

    function getLength() public view returns(uint){
        uint c = arr.length;
        return c;
    }

    function insertEle(uint i)public{
        arr1.push(i);
    }

    function deleteElements() public{
        arr1.pop();
    }

    function getDynamicArrValues() public view returns(uint[] memory){
        return arr1;
    }

}