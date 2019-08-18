/**
 * @param {number} x
 * @return {number}
 */
var writeSQL = function(s) {
    return "update salary set sex = if(sex='m','f','m')";
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