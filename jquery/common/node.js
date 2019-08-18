function ListNode(val) {
    this.val = val;
    this.next = null;
}
function createNode(list){
    var node,next,present=null;
    for(var i=0;i<list.length;i++){
        if(i==0){
            node=new ListNode(list[i]);
            present=node;
        }
        else{
            next=new ListNode(list[i]);
            present.next=next;
            present=next;
        }
    }
    return node;
}
function printNode(node){
    var list=[];
    var present=node;
    while(present){
        list.push(present.val);
        present=present.next;
    }
    console.log(list.join("-->"));
}