/**
 * @param {string} S
 * @return {number[]}
 */
var diStringMatch = function(S) {
    var output=[];
    var min=0;
    var max=S.length;
    for(var i=0;i<S.length;i++){
        if(S[i]=="I"){
            output.push(min);
            min++;
        }
        else if(S[i]=="D"){
            output.push(max);
            max--;
        }
    }
    output.push(min);
    return output;
};

function print(str){
    console.log(str);
}

(function (){
    var input="IDID";
    var output=diStringMatch(input);
    print(input);
    print(output);

}());