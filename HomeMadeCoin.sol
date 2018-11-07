pragma solidity ^0.4.19;

contract HomeMadeCoin{
    mapping (address=>uint256) public balance;
    event transfer(address from ,address to,uint256 value);
    function HomeMadeCoin(uint256 total){
        balance[msg.sender] = total;
    }
    function Transfer(address to, uint256 value){
        balance[msg.sender] -= value;
        balance[to] += value;
        transfer(msg.sender, to, value);
    }
}
