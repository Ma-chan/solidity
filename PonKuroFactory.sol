pragma solidity ^0.4.19;

contract PonKuroFactory{
    struct Pon{
        string name;
        uint amount;
    }
    struct Kuro{
        string name;
        uint amount;
    }
    Pon[] public pons;
    Kuro[] public kuros;
    
    function createPon(string _name,uint _amount) public {
        pons.push(Pon(_name,_amount));
    }
    
    function createKuro(string _name,uint _amount) public {
        kuros.push(Kuro(_name,_amount));
    }
}
