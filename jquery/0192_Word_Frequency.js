/**
 *
 * @returns {string}
 */
var writeShell = function() {
    // this is a sql
    return "cat words.txt | tr -s ' ' '\\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'";
};

function print(str){
    console.log(str);
}

(function (){
    var input=null;
    var output=writeShell(input);
    print(input);
    print(output);

}());


