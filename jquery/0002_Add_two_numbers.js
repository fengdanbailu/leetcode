/**
 *
 * @param l1
 * @param l2
 * @returns {*}
 */
var addTwoNumbers = function (l1, l2) {
    var p1=l1;
    var p2=l2;
    var pp;
    var p3;
    var sign=0;
    var NUM=10;
    while (p1 || p2 || sign) {
        var sum=sign;
        if (p1) {
            sum+=p1.val;
            p1=p1.next;
        }
        if (p2) {
            sum+= p2.val;
            p2 = p2.next;
        }
        if(sum>=NUM){
            sign=1;
        }
        else{
            sign=0;
        }
        if(!p3){
            pp=new ListNode(sum % NUM);
            p3=pp;
        }
        else{
            p3.next=new ListNode(sum % NUM);
            p3=p3.next;
        }
    }
    return pp;
};


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

(function (){
    var list1=createNode([2,4,3]);
    var list2=createNode([5,6,4]);
    var output=addTwoNumbers(list1,list2);
    printNode(list1);
    printNode(list2);
    printNode(output);

}());