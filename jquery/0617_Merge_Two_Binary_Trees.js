/**
 * @param {TreeNode} t1
 * @param {TreeNode} t2
 * @return {TreeNode}
 */
var mergeTrees = function(t1, t2) {
    if (!t1 && !t2) {
        return null;
    }

    if (!t1 || !t2) {
        return t1 || t2;
    }

    var root = new TreeNode(t1.val + t2.val);

    root.left = mergeTrees(t1.left, t2.left);
    root.right = mergeTrees(t1.right, t2.right);
    return root;
};

function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}

function createTree(list){
    var nodelist=[];
    var node,next,present=null;
    for(var i=0;i<list.length;i++){
        if(i==0){
            node=new TreeNode(list[i]);
            nodelist.push(node);
            present=nodelist.shift();
        }
        else{
            next=new TreeNode(list[i]);
            nodelist.push(next);
            if(i%2){
                present.left=next;
            }
            else{
                present.right=next;
                present=nodelist.shift();
            }
        }
    }
    return node;
}
function printTree(node){
    var list=[];
    var output=[];
    list.push(node);
    while(list.length>0){
        var tnode=list.shift();
        if(tnode){
            output.push(tnode.val?tnode.val:"-");
        }

        if(tnode && tnode.left){
            list.push(tnode.left);
        }

        if(tnode && tnode.right){
            list.push(tnode.right);
        }

    }
    console.log(output.join("|"));
}
function print(str){
    console.log(str);
}


(function (){
    var input={
        t1:createTree([1,3,2,5,null,null,null]),
        t2:createTree([2,1,3,null,4,null,7])
    };
    var output=mergeTrees(input.t1,input.t2);
    print(input);
    printTree(input.t1);
    printTree(input.t2);
    print(output);
    printTree(output);

}());