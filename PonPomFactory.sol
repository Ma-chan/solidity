pragma solidity ^0.4.19;
//ぽんぽめ工場
//チワワとポメラニアンを生成するコントラクト
contract PonPomFactory{
    struct Pon{
        string name;
        uint hone;
    }
    struct Pom{
        string name;
        uint hone;
    }
    
    Pon[] public pons;
    Pom[] public poms;
    
    function _createPon(string _name,uint _hone)public{
        pons.push(Pon( _name, _hone));
    }
    
    function _createPom(string _name,uint _hone)public{
        poms.push(Pom( _name, _hone));
    }
}
