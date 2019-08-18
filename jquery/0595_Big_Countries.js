/**
 * @param {number} x
 * @return {number}
 */
var writeSQL = function(s) {
    return "select name,population,area from world where population >25000000 or area > 3000000";
};

function print(str){
    console.log(str);
}

(function (){
    var input="";
    var output=writeSQL(input);
    print(input);
    print(output);

}());