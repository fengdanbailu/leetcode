
/**
 * @param {number[]} A
 * @return {number}
 */
var maxScoreSightseeingPair = function(A) {
    let max=0;
    for(var i=0;i<A.length;i++){
        for(var j=i+1;j<A.length;j++){
            if(A[i]+A[j]+i-j>max){
                max=A[i]+A[j]+i-j;
            }
        }
    }
    return max;
};

var maxScoreSightseeingPair2 = function(A) {
    let max_Ai_plus_i=A[0];
    let max=0;
    for(var j=1;j<A.length;j++){
        if(max<max_Ai_plus_i+A[j]-j){
            max=max_Ai_plus_i+A[j]-j
        }
        if(max_Ai_plus_i<A[j]+j){
            max_Ai_plus_i=A[j]+j;
        }
    }
    return max;
};

var maxScoreSightseeingPair3 = function(A) {
    let j_index=A.length-1
    let max_Aj_minus_j=A[j_index]-j_index;
    let max=0;
    for(var i=A.length-2;i>=0;i--){
        if(max<max_Aj_minus_j+A[i]+i){
            max=max_Aj_minus_j+A[i]+i
        }
        if(max_Aj_minus_j<A[i]-i){
            max_Aj_minus_j=A[i]-i;
        }
    }
    return max;
};

function print(str){
    console.log(str);
}

(function (){
    var input=[8,1,5,2,6];
    var output=maxScoreSightseeingPair(input);
    var output2=maxScoreSightseeingPair2(input);
    var output3=maxScoreSightseeingPair3(input);
    print(input);
    print(output);
    print(output2);
    print(output3);
}());

