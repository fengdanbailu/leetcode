/**
 *
 * @param nums
 * @returns {*}
 */
var singleNumber = function(nums) {
    var result=nums[0];
    for(var i=1;i<nums.length;i++){
        result^=nums[i];
    }
    return result;
};
function print(str){
    console.log(str);
}

(function (){
    var input=[4,1,2,1,2];
    var output=singleNumber(input);
    print(input);
    print(output);

}());