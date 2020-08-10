/**
 * @param {string[]} A
 * @return {number}
 */
var numSpecialEquivGroups = function(A) {
    var obj={};
    for(var i=0;i<A.length;i++){
        var tmp=nomalize(A[i]);
        obj[tmp]=true;
    }
    return Object.keys(obj).length;
};
var nomalize = function(str){
    var even = [];
    var odd = [];
    for(var i=0;i<str.length;i++){
        if(i%2){
            odd.push(str[i]);
        }
        else{
            even.push(str[i]);
        }
    }
    return odd.sort()+even.sort();
}