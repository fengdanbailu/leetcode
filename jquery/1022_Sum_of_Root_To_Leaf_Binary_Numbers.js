/**
 * @param {TreeNode} root
 * @return {number}
 */
var sumRootToLeaf = function(root) {
    return sumOneLevel(root,root.val);
};
var sumOneLevel = function(root,val){
    var newval=0;
    if(root.left){
        newval+=sumOneLevel(root.left,root.left.val+val*2);
    }
    if(root.right){
        newval+=sumOneLevel(root.right,root.right.val+val*2);
    }
    if(!root.left && !root.right){
        newval=val;
    }
    return newval;
}

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
    var input=createTree([1,0,1,0,1,0,1]);
    var output=sumRootToLeaf(input);
    print(input);
    print(output);

}());