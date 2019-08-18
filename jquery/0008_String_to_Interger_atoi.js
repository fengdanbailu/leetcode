/**
 *
 * @param str
 * @returns {number}
 */
var myAtoi = function(str) {
    var result=parseInt(str);
    var ZERO=0;
    var MAX=parseInt(Math.pow(2,31)-1)
    var MIN=-parseInt(Math.pow(2,31))
    if(isNaN(result)){
        result=ZERO;
    }
    else if(result>MAX){
        result=MAX;
    }
    else if(result<MIN){
        result=MIN;
    }
    return result;
};

function print(str){
    console.log(str);
}

(function (){
    // var input="42";
    // var input="-42";
    var input="4193 with words";
    var output=myAtoi(input);
    print(input);
    print(output);

}());