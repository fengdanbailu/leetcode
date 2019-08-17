/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @param {number} sum
 * @return {number[][]}
 */
var pathSum = function(root, sum) {
    return root?pathOneLevel(root,sum,[],[]):[];
};
var pathOneLevel=function(root,sum,path,allPath){
    path.push(root.val);
    if(!root.left && !root.right && root.val===sum){
        allPath.push(path);
    }
    if(root.left){
        pathOneLevel(root.left,sum-root.val,path.slice(),allPath);
    }
    if(root.right){
        pathOneLevel(root.right,sum-root.val,path.slice(),allPath);
    }
    return allPath;
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
    var root=createTree([5,4,8,11,null,13,4,7,2,null,null,null,null,5,1]);
    var input={
        root:root,
        sum:22
    };
    var output=pathSum(input.root,input.sum);
    print(root);
    printTree(root);
    // print(input);
    print(output);

}());