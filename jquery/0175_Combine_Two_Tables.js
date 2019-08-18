
var writeSQL = function() {
    // this is a sql
    return "select FirstName, LastName, City, State from Person as a left join Address as b on a.PersonId=b.PersonId";
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