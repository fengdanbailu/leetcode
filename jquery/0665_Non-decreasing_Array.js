/**
 * @param {number[]} nums
 * @return {boolean}
 */
var checkPossibility = function(nums) {
    var len=nums.length;
    if(len<=2){
        return true
    }
    else{
        var sign=check(nums);
        if(sign==len){
            return true;
        }
        else if(sign==-1){
            return false;
        }
        else{
            var nums1=nums.slice();
            nums1[sign-1]=nums1[sign];
            var sign1=check(nums1);
            if(sign1==len){return true}
            var nums2=nums.slice();
            nums2[sign]=nums2[sign-1];
            var sign2=check(nums2)
            return sign2==len;
        }
    }
};
var check=function(nums){
    var sum=0;
    var len=nums.length;
    var sign=len;
    for(var i=1;i<len;i++){
        if(nums[i]-nums[i-1]<0){
            sum++;
            sign=i;
            if(sum==2){
                return -1;
            }
        }
    }
    return sign;

}

function print(str){
    console.log(str);
}

(function (){
    var input=[4,2,3];
    var output=checkPossibility(input);
    print(input);
    print(output);

}());