
var writeSQL = function() {
    // this is a sql
    return "select (\n" +
        "  select distinct Salary from Employee order by Salary Desc limit 1 offset 1\n" +
        ")as SecondHighestSalary";
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