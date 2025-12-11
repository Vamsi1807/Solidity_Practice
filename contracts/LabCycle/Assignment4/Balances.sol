// SPDX-Lisence-Identifier:GPL-3.0

pragma solidity ^0.8.14;

contract Bank{
    mapping(address => uint) public balances;

    function deposit() public payable{
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount)public{
        require(balances[msg.sender] >= amount,"Insufficient Balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function getBalance(address user) public view returns(uint){
        return balances[user];
    }
}