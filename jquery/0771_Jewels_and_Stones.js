/**
 * @param {string} J
 * @param {string} S
 * @return {number}
 */
var numJewelsInStones = function(J, S) {
    var map={};
    for(var i=0;i<J.length;i++){
        map[J[i]]=false;
    }
    var sum=0;
    for(var i=0;i<S.length;i++){
        if(map.hasOwnProperty(S[i])){
            sum++;
        }
    }
    return sum;
};
function print(str){
    console.log(str);
}

(function (){
    var input={
        J : "aA",
        S : "aAAbbbb"
    };
    var output=numJewelsInStones(input.J,input.S);
    print(input);
    print(output);

}());