/**
 * @param {number[]} target
 * @param {number} n
 * @return {string[]}
 */
var buildArray = function(target, n) {
    var output=[];
    var k=1;
    for(var i=0;i<target.length;i++){
        if(target[i]==k){
            output.push("Push");
        }
        else{
            output.push("Push");
            output.push("Pop");
            i--;
        }
        k++;
    }
    return output;
};