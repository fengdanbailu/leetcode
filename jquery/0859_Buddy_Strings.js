/**
 * @param {string} A
 * @param {string} B
 * @return {boolean}
 */
var buddyStrings = function(A, B) {
    var num=0;
    if(A.length!=B.length){
        return false;
    }
    var a1,a2,b1,b2;
    var json={};
    for(var i=0;i<A.length;i++){
        if(json.hasOwnProperty(A.charAt(i))){
            json[A.charAt(i).toString()]++;
        }
        else{
            json[A.charAt(i).toString()]=1;
        }
        if(A.charAt(i)!==B.charAt(i)){
            num++;
            if(num==1){
                a1=A.charAt(i);
                b1=B.charAt(i);
            }
            if(num==2){
                a2=A.charAt(i);
                b2=B.charAt(i);
            }
        }
    }
    var sign=false;
    for(var key in json){
        if(json[key]>1){
            sign=true;
        }
    }
    return (num==2 && a1==b2 && a2==b1) || (num==0 && sign);
};

function print(str){
    console.log(str);
}

(function (){
    var input={
        A : "ab",
        B : "ba"
    };
    var output=buddyStrings(input.A,input.B);
    print(input);
    print(output);

}());