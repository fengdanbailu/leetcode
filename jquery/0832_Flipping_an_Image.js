/**
 * @param {number[][]} A
 * @return {number[][]}
 */
var flipAndInvertImage = function(A) {
    A=JSON.parse(JSON.stringify(A));
    var tmp;
    for(var i=0;i<A.length;i++){
        for(var j=0;j<A[i].length/2;j++){
            tmp=A[i][j];
            A[i][j]=1-A[i][A[i].length-1-j];
            A[i][A[i].length-1-j]=1-tmp;
        }
    }
    return A;
};

function print(str){
    console.log(str);
}

(function (){
    // var input=[[1,1,0],[1,0,1],[0,0,0]];
    var input=[[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]];
    var output=flipAndInvertImage(input);
    print(input);
    print(output);

}());