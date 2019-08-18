/**
 *
 * @returns {string}
 */
var writeSQL = function() {
    // this is a sql
    return "select Email from Person group by Email having count(*) > 1";
};

function print(str){
    console.log(str);
}

(function (){
    var input=null;
    var output=writeSQL(input);
    print(input);
    print(output);

}());