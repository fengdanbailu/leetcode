/**
 * @param {number} s
 * @param {number[]} nums
 * @return {number}
 */

var minSubArrayLen = function(s, nums) {
  if (nums.length === 0) return 0;
  const slideWindow = [];
  let acc = 0;
  let min = null;

  for (let i = 0; i < nums.length + 1; i++) {
    const num = nums[i];

    while (acc >= s) {
      if (min === null || slideWindow.length < min) {
        min = slideWindow.length;
      }
      acc = acc - slideWindow.shift();
    }

    slideWindow.push(num);

    acc = slideWindow.reduce((a, b) => a + b, 0);
  }

  return min || 0;
};



function print(str){
    console.log(str);
}


(function (){
    var input = {
    	s:7,
    	nums:[2, 3, 1, 2, 4, 3]
    }
    var output = minSubArrayLen(input.s,input.nums);
    print("input:");
    print(input);
    print("output:");
    print(output);

}());