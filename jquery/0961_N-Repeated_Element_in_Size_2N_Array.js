/**
 * @param {number[]} A
 * @return {number}
 */
var repeatedNTimes = function(A) {
    var num;
    var t=0;
    for(var i=0;i<A.length-1;i++){
        if(t==0){
            num=A[i];
            t=1;
        }
        else if(A[i]==num){
            t++;
        }
        else{
            t--;
        }
    }
    var times=0;
    for(var i=0;i<A.length;i++){
        if(num==A[i]){
            times++;
        }
    }
    if(times>=A.length/2){
        return num;
    }
    else {
        return A[A.length-1];
    }
};
function print(str){
    console.log(str);
}

(function (){
    // var input=[2,1,2,5,3,2];
    var input=[5,1,5,2,5,3,5,4];
    var output=repeatedNTimes(input);
    print(input);
    print(output);

}());