pragma solidity ^0.4.19;

contract Block{
    //ユーザの構造体
    struct User{
        uint User_ID;
        uint Problem_ID;
        uint Accept_Accumulator;
        uint Result_hash;//ジャッジ結果のハッシュ値
        uint Code_hash;//ジャッジしたコードのハッシュ値
    }
    //ユーザの情報を引き出す関数
    function research (uint User_ID) private {
        mapping(uint => uint) User_IDToCode_hash;
        
    }
    //ユーザの情報を追加する関数
    function add (uint User_ID) private {
        //id番号が一致するユーザに学習歴を追加する
        
        Accept_Accumulator += msg.value;
        mapping(uint => uint) User_IDToCode_hash;
        mapping(uint => uint) User_IDToResult_hash;
        
    }
    
    
}
