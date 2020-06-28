/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffleReverse = function(nums, n) {
    return nums.map((item,index) => {
        return index<n ? (nums[2*index]): (nums[2*(index-n)+1]);
    });
};

var shuffle = function(nums, n) {
    return nums.map((item,index) => {
        return index%2==0 ? (nums[index/2]): (nums[(index-1)/2+n]);
    });
};

function print(str){
    console.log(str);
}

(function (){
    var input={
        nums:[2,5,1,3,4,7],
        n: 3
    }
    // var input={
    //     nums: [1,2,3,4,4,3,2,1],
    //     n: 4
    // }
    // var input={
    //     nums: [1,1,2,2],
    //     n: 2
    // }
    var output=shuffle(input.nums,input.n);
    print(input);
    print(output);
    print(shuffleReverse(output,input.n))
}());