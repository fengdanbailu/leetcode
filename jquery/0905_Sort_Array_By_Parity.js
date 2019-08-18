/**
 * @param {number[]} A
 * @return {number[]}
 */
var sortArrayByParity = function(A) {
    var min=0;
    var max=A.length-1;
    var B=new Array(A.length)
    for(var i=0;i<A.length;i++){
        if(A[i]%2){
            B[max]=A[i];
            max--;
        }
        else{
            B[min]=A[i];
            min++;
        }
    }
    return B;
};

function print(str){
    console.log(str);
}

(function (){
    var input=[3,1,2,4];
    var output=sortArrayByParity(input);
    print(input);
    print(output);

}());