/**
 * @param {number} k
 * @return {number}
 */
var findMinFibonacciNumbers = function(k) {
    var t0=t1=t2=1;
    while(t2<k){
        t2=t0+t1;
        t0=t1;
        t1=t2;
    }
    if(t1==k){
        return 1;
    }
    else{
        return findMinFibonacciNumbers(k-t0)+1;
    }
};