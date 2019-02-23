pragma solidity ^0.4.23;
 
contract SimpleStruct{
    
 struct User{
     uint userID;
     string userName;
 }
 User[] public userList;
 function addUser(string _name) returns (uint){
     uint id = userList.push(User({
         addr: msg.sender,
         name: _name
     }));
     return (id-1);
 }
 function addUser2(string _name) returns (uint){
     userList.length += 1;
     uint id=userList.length-1;
     userList[id].addr=msg.sender;
     userList[id].name=_name;
     return id;
 }
 function editUser(uint _id, string _name){
     if(userList.length <= _id || userList[_id].addr != msg.sender){
         throw;
     }
     userList[_id].name=_name;
 }
 function getUser(uint _id) constant returns (address, string){
     return (userList[_id].addr, userList[_id].name);
 }
}
