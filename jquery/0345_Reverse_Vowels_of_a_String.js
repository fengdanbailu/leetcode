/**
 * @param {string} s
 * @return {string}
 */
var reverseVowels = function(s) {
    var start=0;
    var end=s.length-1;
    var ss=s.split("");
    while(start<end){
        if(!isVowel(ss[start])){
            start++;
            continue;
        }
        else if(!isVowel(ss[end])){
            end--;
            continue;
        }
        else if(isVowel(ss[start]) && isVowel(ss[end])){
            var temp=ss[start];
            ss[start]=ss[end];
            ss[end]=temp;
            start++;
            end--;
        }
    }
    return ss.join("");
};
var isVowel=function(letter){
    return /[aeiouAEIOU]$/.test(letter);
}

function print(str){
    console.log(str);
}

(function (){
    var input="leetcode";
    var output=reverseVowels(input);
    print(input);
    print(output);

}());