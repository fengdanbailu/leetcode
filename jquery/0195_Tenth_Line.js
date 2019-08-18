
var writeShell = function() {
    // this is a sql
    return "tail -n +10 file.txt | head -1 ";
    return "head -10 file.txt | tail -n +10";
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


