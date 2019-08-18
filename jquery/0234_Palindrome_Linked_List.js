/**
 *
 * @param head
 * @returns {*}
 */
var isPalindrome = function(head) {
    head=JSON.parse(JSON.stringify(head));
    if(!head)return head;
    var fast = head;
    var slow = head;
    var fastnext=fast.next;
    while(fastnext !== null && fastnext.next !==null){
        slow = slow.next;
        fast = fastnext.next;
        fastnext=fast.next;
    }
    var rev = reverse(slow);
    var trev=rev;
    while(head != null && rev != null){

        if(head.val !== rev.val){
            return false;
        }
        head = head.next;
        rev = rev.next;
    }
    var revback=reverse(trev);
    fast.next=revback;
    return true;
};

var reverse=function(head){
    var cur = head;
    var pre=null;
    var next;
    while(cur!==null){
        next = cur.next;
        cur.next = pre;
        pre = cur;
        cur = next;
    }
    head = pre;
    return head;
}

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

function print(str){
    console.log(str);
}

(function (){
    var input=createNode([1,2,2,1]);
    var output=isPalindrome(input);
    printNode(input);
    print(output);

}());