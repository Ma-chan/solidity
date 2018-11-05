pragma solidity ^0.4.19;

contract HomeMadeCoin{
    mapping (address=>uint256) public balance;
    function HomeMadeCoin(uint256 total){
        balance[msg.sender] = total;
    }
    function transfer(address to, uint256 value){
        balance[msg.sender] =- value
        balance[to] += value;
        Transfer(msg.sender, to, value);
    }
}
