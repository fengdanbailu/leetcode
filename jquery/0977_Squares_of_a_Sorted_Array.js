/**
 * @param {number[]} A
 * @return {number[]}
 */
var sortedSquares = function(A) {
    var min=0;
    var max=A.length-1;
    var B=new Array(A.length);
    for(var i=max;i>=0;i--){
        if(A[max]>-A[min]){
            B[i]=A[max]*A[max];
            max--;
        }
        else{
            B[i]=A[min]*A[min];
            min++;
        }
    }
    return B;
};

function print(str){
    console.log(str);
}

(function (){
    var input=[-7,-3,2,3,11];
    var output=sortedSquares(input);
    print(input);
    print(output);

}());