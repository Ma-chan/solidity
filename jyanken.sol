pragma solidity ^0.4.19;
contract jyanken{
    uint random_tee = uint(keccak256(block.blockhash(block.number)))%3;
    uint random_client = uint(keccak256(block.blockhash(block.number)))%3;
    address owner;
    uint public amount;
    
    uint v=10;
    
    // 0がグー,1がチョキ,2がパー
    //じゃんけん1回目の結果によって、得た合計ポイントを送信するプログラム
    
    if(random_tee == random_client){
        return 'aiko';
    }else if(random_tee == 0 && random_client == 1){
        return 'win';
        amount += v;
        msg.sender.send(v);
    }else if(random_tee == 0 && random_client == 2){
        return 'lose';
        amount -= v;
        msg.sender.send(v);
    }else if(random_tee == 1 && random_client == 2){
        return 'win';
        amount += v;
        msg.sender.send(v);
    }else if(random_tee == 1 && random_client == 0){
        return 'lose';
        amount -= v;
        msg.sender.send(v);
    }else if(random_tee == 2 && random_client == 0){
        return 'win';
        amount += v;
        msg.sender.send(v);
    }else if(random_tee ==2 && random_client == 1){
        return 'lose';
        amount -= v;
        msg.sender.send(v);
    }else{
        return 'error';
        break;
    }
}
