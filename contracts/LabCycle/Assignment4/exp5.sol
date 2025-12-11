// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookStore {
    struct Book {
        string title;
        string author;
        uint year;
    }

    Book public book;

    function setBook(Book memory _book) public {
        book = _book;
    }

    function getBook() public view returns (string memory, string memory, uint) {
        return (book.title, book.author, book.year);
    }
}
