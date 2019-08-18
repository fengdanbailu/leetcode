/**
 * @param {number} a
 * @param {number} b
 * @return {number}
 */
var getSum = function(a, b) {
    if(a>b){
        return Math.log(Math.pow(Math.E,b/a)*Math.pow(Math.E,1))*a;
    }
    else{
        return Math.log(Math.pow(Math.E,a/b)*Math.pow(Math.E,1))*b;
    }

};

function print(str){
    console.log(str);
}

(function (){
    var input={
        a:-2,
        b:3
    };
    var output=getSum(input.a,input.b);
    print(input);
    print(output);

}());