/**
 * @param {Point[]} points
 * @return {number}
 */
var SAME="same";
var INF="inf";
const TRIGER=1000000000000.0;
var maxPoints = function(points) {

    var sum=0;
    var len=points.length;
    for(var i=0;i<len && sum<len-i;i++){

        var map={};
        map[SAME]=1;
        for(var j=i+1;j<len;j++){
            var r=rate(points[i],points[j]);
            if(map.hasOwnProperty(r)){
                map[r]++;
            }
            else{
                map[r]=1;
            }
        }

        var s=0;
        for(var key in map){
            if(map[key]>s && key!=SAME){
                s=map[key];
            }
        }

        s+=map[SAME];

        if(s>sum){
            sum=s;
        }
    }
    return sum;
};
var rate=function(pointA,pointB){
    var sign;
    if(pointB.x-pointA.x==0 && pointB.y-pointA.y==0){
        sign=SAME;
    }
    else if(pointB.x-pointA.x==0){
        sign=INF;
    }
    else{
        sign= TRIGER*(pointB.y-pointA.y)/(pointB.x-pointA.x);
    }
    return sign;
}

function Point(x, y) {
    this.x = x;
    this.y = y;
}

function createPoint(list){
    var pointArray=[];
    for(var i=0;i<list.length;i++){
        pointArray.push(new Point(list[i][0],list[i][1]));
    }
    return pointArray;
}

function print(str){
    console.log(str);
}

(function (){
    var input=createPoint([[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]);
    // var input=createPoint([[1,1],[2,2],[3,3]]);
    var output=maxPoints(input);
    print(input);
    print(output);
}());