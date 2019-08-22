/**
 * @param {number[]} A
 * @return {number[]}
 */
var pancakeSort = function(A) {
    var result=[];
    var B=A;
    for(var i=0;i<B.length;i++){
        var k=B.length-i;
        var num=findMaxIndexFromK(B,k);

        if(num==k){

        }
        else if(num==1){
            result.push(k);
            B=reverseFirstK(B,k);
        }
        else if(num!=k){
            result.push(num);
            B=reverseFirstK(B,num);
            result.push(k);
            B=reverseFirstK(B,k);
        }
    }
    return result;
};

var findMaxIndexFromK = function(A,k){
    var max=A[0];
    var index=0;
    for(var i=1;i<k;i++){
        if(max<A[i]){
            max=A[i];
            index=i;
        }
    }
    return index+1;
}

var reverseFirstK =function(A,k){
    for(var i=0;i<k/2;i++){
        var tmp=A[i];
        A[i]=A[k-1-i];
        A[k-1-i]=tmp;
    }
    return A;
}
function print(str){
    console.log(str);
}

(function (){
    var input=[3,2,4,1];
    var output=pancakeSort(input);
    print(input);
    print(output);

}());