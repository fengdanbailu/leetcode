/**
 *
 * @param s
 * @returns {boolean}
 */
var isNumber = function(s) {
    return /^[+-]?([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)([eE][+-]?[0-9]+)?$/.test(s.trim());
};

function print(str){
    console.log(str);
}

(function (){
    var input=" -90e3   ";
    var output=isNumber(input);
    print(input);
    print(output);

}());