pragma solidity ^0.4.19;

contract UserRegistration{
    event NewUser();
    struct User{
        uint amount;
        string name;
        address Useraddress;
    }
    
    User[] public user;
    User ayaka=User(172,"ayaka");
    
    user.push(ayaka);
    
    
}
