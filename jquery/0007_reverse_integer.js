/**
 * @param {number} x
 * @return {number}
 */
var reverse = function(x) {
    var result;
    if(x<parseInt(-Math.pow(2,31)) || x>parseInt(Math.pow(2,31)-1)){
        result= 0;
    }
    else{
        result= x>0?(parseInt(x.toString().split("").reverse().join(""))):(parseInt(-(-x).toString().split("").reverse().join("")));
    }
    if(result<parseInt(-Math.pow(2,31)) || result>parseInt(Math.pow(2,31)-1)){
        result= 0;
    }
    return result;
};

function print(str){
    console.log(str);
}

(function (){
    var input=123;
    var output=reverse(input);
    print(input);
    print(output);

}());