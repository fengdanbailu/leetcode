/**
 * @param {string} str
 * @return {string}
 */
var toLowerCase = function(str) {
    return str.toLowerCase();
};

function print(str){
    console.log(str);
}

(function (){
    var input="Hello";
    var output=toLowerCase(input);
    print(input);
    print(output);

}());