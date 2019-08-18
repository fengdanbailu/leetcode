
var writeShell = function() {
    // this is a sql
    return "ncol=`head -n 1 file.txt | wc -w`\n" +
        "for i in `seq 1 $ncol`\n" +
        "do\n" +
        "    echo `cut -d' ' -f$i file.txt`\n" +
        "done";
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


