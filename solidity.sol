pragma solidity ^0.4.19;
contract Pon{
    struct User{
        uint amount;
        string name;
        address adr;
        uint Mynumber;
    }
    mapping(uint => User) public users;
    mapping(uint => address) public PonToUser;
    mapping(address=>uint) favoriteNumber;
    
    function setMyNumber(uint _myNumber) public {
        favoriteNumber[msg.sender] = _myNumber;
    }
    
    function whatIsMyNumber() public view returns (uint){
        return favoriteNumber[msg.sender];
    }
    
    
}
