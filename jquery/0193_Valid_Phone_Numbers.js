
var writeShell = function() {
    // this is a sql
    return "grep -P '^(\\d{3}-|\\(\\d{3}\\) )\\d{3}-\\d{4}$' file.txt";
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


