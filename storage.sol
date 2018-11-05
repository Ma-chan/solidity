
contract SimpleStorage{
 
   struct node{
       string name;
       string status;
       uint amount;
       address adr;
   }
    node[] nodes;
    
    function getnode(uint _index) public {
        // ブロックチェーンに書き込む場合
        // 要素への参照を渡しているのでブロックチェーンを更新できる
        node storage node1 = nodes[_index];
        node1.name = "Read!";
        // 値のコピーにはmemoryを使う
        // memoryの値を変更してもブロックチェーンには書き込まれない
        node memory node2 = nodes[_index + 1];
        node2.name = "Read!";
        // memoryを使ってブロックチェーンに書き込む
        nodes[_index]=node2;
    }
}
