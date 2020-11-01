pragma solidity ^0.5.16;
//import "github.com/provable-things/ethereum-api/provableAPI.sol";
contract jyanken{
    //uint Goo=="0";
        //uint Choki=="1";
        //uint Par=="2";
    uint rand=0,rand1=0;
    address client;
    address tee;
    address BC;
    uint random = uint(keccak256(now,msg.sender,rand))%3;
    uint random1 = uint(keccak256(now,msg.sender,rand1))%3;
    enum tee1HandSigns{
        tee1_HandSigns=random1;
        rand1++;
    }
    enum clientHandSigns{
        client_HandSigns=random;
        rand++;
    }
    
    struct client{
        uint256 b;
    }
    
    struct tee1{
        uint256 b;
    }
//teeが勝つ場合と負ける場合とアイコの場合、判定不能の例外処理
//勝つと10得る,負けると10失う
    function jyanken_judge(HandSigns _handSign,int r,int b) public constant returns(HandSigns){
        if(_tee1handSign=="0" && _clienthandSign==""){
            b+=10;
        }else if(_tee1handSign=="" && _clienthandSign==""){
            b-=10;
        }else if(_tee1handSign=="" && _clienthandSign==""){
            
        }else if(_tee1handSign=="" && _clienthandSign==""){
            b+=10;
        }else if(_tee1handSign=="" && _clienthandSign==""){
            b-=10;
        }else if(_tee1handSign=="" && _clienthandSign==""){
            
        }else if(_tee1handSign=="" && _clienthandSign==""){
            b+=10;
            
        }else if(_tee1handSign=="" && _clienthandSign==""){
            b-=10;
            
        }else if(_tee1handSign=="" && _clienthandSign==""){
            
        }else{
            return HandSigns.Undefined;
        }
    }
}
