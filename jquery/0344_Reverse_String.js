/**
 * @param {character[]} s
 * @return {void} Do not return anything, modify s in-place instead.
 */
var reverseString = function(s) {
    var t;
    for(var i=0;i<s.length/2;i++){
        t=s[i];
        s[i]=s[s.length-1-i];
        s[s.length-1-i]=t;
    }
    return t;
};

function print(str){
    console.log(str);
}

(function (){
    var input=["h","e","l","l","o"];
    var output=reverseString(input);
    print(input);
    print(output);

}());