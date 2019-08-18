/**
 * @param {number} x
 * @param {number} y
 * @return {number}
 */
var hammingDistance = function(x, y) {
    var result=x^y;
    var distance=0;
    while(result>0){
        if(result&1===1){
            distance++;
        }
        result>>=1;
    }
    return distance;
};

function print(str){
    console.log(str);
}

(function (){
    var input={
        x:1,
        y:4
    };
    var output=hammingDistance(input.x,input.y);
    print(input);
    print(output);

}());