/**
 *
 * @param nums
 * @param target
 * @returns {*[]}
 */
var twoSum = function(nums, target) {
    var map={};
    for(var i=0;i<nums.length;i++){
        if(map.hasOwnProperty(nums[i])){
            if(i!=map[nums[i]]){
                return [map[nums[i]],i];
            }
        }
        else{
            map[target-nums[i]]=i;
        }
    }
};

(function (){
    var input={
        nums:[2,7,11,15],
        target:9,
    }
    var output=twoSum(input.nums,input.target);
    console.log(input);
    console.log(output);
}());