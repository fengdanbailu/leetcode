/**
 * @param {string} A
 * @param {string} B
 * @return {boolean}
 */
var rotateString = function(A, B) {
    var C=A+A;
    return C.indexOf(B)!=-1 && A.length==B.length;
};

function print(str){
    console.log(str);
}

(function (){
    var input={
        A : 'abcde',
        B : 'cdeab'
    };
    var output=rotateString(input.A,input.B);
    print(input);
    print(output);

}());