/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {string} S
 * @return {TreeNode}
 */
var recoverFromPreorder = function(S) {
    //利用正则表达式，转化为数组结构
    var list = S.match(/-*\d+/g) 
    //print(list)
    //将数组转化为json结构
    var jsonlist = list.map((item) => {
        tlevel = item.split('-').length-1;
        return {
            value:item.substr(tlevel),
            level:tlevel
        }
    });
    //print(jsonlist)
    //将前序遍历组织成层次遍历
    var stack = []
    for(var i = 0; i < jsonlist.length; i++){
        let {value, level} = jsonlist[i];
        let curNode = new TreeNode(value);
        if(stack.length > 0 ){//第一个节点不需要处理，直接放入队列
            while(stack.length > level){//不是对应层次的直接弹出，会在其他地方处理
                stack.pop();
            }
            //优先放左子树，左子树非空时放右子树
            let topOfStack = stack[stack.length-1]
            topOfStack.left ? topOfStack.right = curNode : topOfStack.left = curNode
        }
        stack.push(curNode)
    }
    //print(stack[0])
    return stack[0];
};

function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}

function print(str){
    console.log(str);
}

function printTree(tree){
    let stack = [];
    let result = [];
    stack.push(tree)
    while(stack.length > 0){
        let topItem = stack.shift();
        print(topItem)
        result.push(topItem.val)
        if(topItem.left !== null){
            stack.push(topItem.left)
        }
        if(topItem.right !== null){
            stack.push(topItem.right)
        } 
        if((topItem.left===null || topItem.right===null) && topItem.val!=null){
            stack.push(new TreeNode(null))
        }
    }
    //把末尾的null去掉
    for(var i=result.length-1;i>=0;i--){
        if(result[i]== null){
            result.splice(i,1)
        }
        else{
            break;
        }
    }
    return result;
}


(function (){
    // var input="1-2--3--4-5--6--7";
    // var input="1-2--3---4-5--6---7";
    var input="1-401--349---90--88";
    var output=recoverFromPreorder(input);
    print(input);
    print(printTree(output))

}());