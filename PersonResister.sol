pragma solidity ^0.5.10;
pragma experimental ABIEncoderV2;
// 学習歴参照コントラクト
contract PersonResister {
    
//学習歴が更新されたら,コントラクトからアプリケーションに伝える
//アプリケーションへの伝達内容: アクセプト数,問題ID,タイムスタンプ

event Upload(uint acceptNum,string[] problemID,uint lastUpdated);

    // コントラクトの管理者アドレス
    address admin;

    // 学習歴
    struct Person{
        uint lastUpdated;
        uint acceptNum;
        string[] problemID;
    }
    
    // 学校や企業などの情報
    struct Organization {
        address eth_ID;
    }
    
    // コンストラクタ
    constructor () public {
        admin = msg.sender;
        
    }
        
    // ---------------------------------------------------------------------
    // データ更新関数（upload）
    // ---------------------------------------------------------------------
    // 学習ログを更新する
    //キーgが学生のeth_idで,バリューが構造体Person
    mapping(address => Person) public persons;
    //キーが学生のeth_idで,バリューが構造体Organiaztion
    mapping(address => Organization) public organizations;

    //Accept数と解いたproblemIDを追加する関数
    function upload (string memory problemID,uint acceptNum,address eth_ID) public {
    
            persons[msg.sender].acceptNum += acceptNum;
            persons[msg.sender].lastUpdated = now;
            persons[msg.sender].problemID.push(problemID);
            persons[msg.sender].eth_ID = eth_ID;
            
    	//event発火して,回答数とproblmIDと更新時刻が学習ログを参照した時に,アプリケーションに伝わる
        emit Upload(acceptNum,persons[msg.sender].problemID,now);  
    }
    
    // ---------------------------------------------------------------------
    // データ取得関数（get）
    // ---------------------------------------------------------------------
    //　学習ログを参照する関数
    function getPerson(address eth_ID) public view returns(Person memory){
         
        return persons[eth_ID];
    }
}
