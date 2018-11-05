pragma solidity ^0.4.19;
contract Bank{
   uint public amount;
   function deposit()payable{
       amount += msg.value;
  
   }
   
   function withdraw(uint v){
       amount -=v;
       msg.sender.send(v);
   }
}
