/**
 * @param {number} n
 * @param {number} start
 * @return {number}
 */
var xorOperation = function(n, start) {
    result = start
    for(var i=1;i<n;i++){
        result^=start+2*i;
    }
    return result;
};

function print(str){
    console.log(str);
}

(function (){
    // var input={
    //     n: 5,
    //     start: 0
    // }
    // var input={
    //     n: 4,
    //     start: 3
    // }
    // var input={
    //     n: 1,
    //     start: 7
    // }
    var input={
        n: 10,
        start: 5
    }
    var output=xorOperation(input.n,input.start);
    print(input);
    print(output);
}());