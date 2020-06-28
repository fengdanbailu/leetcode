/**
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function(nums) {
	var result=[nums[0]];
	for(let i=1;i<nums.length;i++){
		result[i]=result[i-1]+nums[i];
	}
	return result;
};

function print(str){
    console.log(str);
}

(function (){
    // var input=[1,2,3,4];
    // var input=[1,1,1,1,1];
    var input=[3,1,2,10,1];
    var output=runningSum(input);
    print(input);
    print(output);
}());