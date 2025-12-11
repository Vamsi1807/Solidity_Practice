// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.14;

contract NestedStructuresDemo{
    struct Author{
        string name;
        string affiliation;
    }

    struct Book{
        string title;
        Author a;
        string publisher;
        uint bid;
    }

    Book b;

    function addBook(string memory _t, string memory _name, string memory _affiliation, string memory _p, uint _id)public{
        b = Book(_t,Author(_name, _affiliation),_p,_id);
    }

    function getBook()public view returns(string memory _t, Author memory _a, string memory _p, uint _id){
        return (b.title, b.a, b.publisher, b.bid);
    }
}