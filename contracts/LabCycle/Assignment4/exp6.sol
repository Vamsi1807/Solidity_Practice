// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransactionLogger {
    struct Transaction {
        address from;
        address to;
        uint amount;
        uint timestamp;
    }

    event TransactionLogged(address from, address to, uint amount, uint timestamp);

    function createTransaction(address _to, uint _amount) public {
        Transaction memory txn = Transaction(msg.sender, _to, _amount, block.timestamp);
        emit TransactionLogged(txn.from, txn.to, txn.amount, txn.timestamp);
    }
}
