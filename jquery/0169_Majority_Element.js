/**
 *
 * @param nums
 * @returns {number}
 */
var majorityElement = function(nums) {
    var map={};
    for(var i=0;i<nums.length;i++){
        if(map.hasOwnProperty(nums[i])){
            map[nums[i]]=map[nums[i]]+1;
        }
        else{
            map[nums[i]]=1;
        }
    }
    var max=0;
    var max_key=0;
    for(var key in map){
        if(map[key]>max){
            max=map[key];
            max_key=key;
        }
    }
    return max_key;
};
function print(str){
    console.log(str);
}

(function (){
    // var input=[2,2,1,1,1,2,2];
    var input=[3,2,3];
    var output=majorityElement(input);
    print(input);
    print(output);

}());