/**
 * @param {number[]} candies
 * @param {number} extraCandies
 * @return {boolean[]}
 */
var kidsWithCandies = function(candies, extraCandies) {
    // var max=0;
    // for(let i=0;i<candies.length;i++){
    //     if(max<candies[i]){
    //         max=candies[i];
    //     }
    // }
    let max = Math.max(...candies)
    return candies.map((item) => {
        return item + extraCandies >= max;
    });
};

function print(str){
    console.log(str);
}

(function (){
    // var input={
    //     candies: [2,3,5,1,3],
    //     extraCandies: 3
    // }
    // var input={
    //     candies: [4,2,1,1,2],
    //     extraCandies: 1
    // }
    var input={
        candies: [12,1,12],
        extraCandies: 10
    }
    var output=kidsWithCandies(input.candies,input.extraCandies);
    print(input);
    print(output);
}());