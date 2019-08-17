/**
 * @param {number} n
 * @return {number[][]}
 */
var top,right,bottom,left,len,direct;
var generateMatrix = function(n) {
    //定义n*n的数组
    var number=init_matrix(n);
    init_var(n);
    //逐个值填充；
    var pl;
    for(var i=0;i<n*n;i++){
        pl=next(pl);
        number[pl[0]][pl[1]]=i+1;
    }
    return number
};
var init_matrix=function(n){
    var number =new Array(n);
    for(var i=0;i<number.length;i++){
        number[i]=new Array(n);
    }
    return number;
}
var init_var=function(n){
    top=1;
    right=n-1;
    bottom=n-1;
    left=0;
    len=n;
    direct="right";
}

var next=function(point){
    var newpoint;
    if(point==null){
        newpoint=[0,0];
    }
    else{
        var pdirect=getDirect(point);
        if(pdirect=="right"){
            newpoint=[point[0],point[1]+1];
        }
        else if(pdirect=="bottom"){
            newpoint=[point[0]+1,point[1]];
        }
        else if(pdirect=="left"){
            newpoint=[point[0],point[1]-1];
        }
        else if(pdirect=="top"){
            newpoint=[point[0]-1,point[1]];
        }
    }
    return newpoint;
}
var getDirect=function(point){
    if(direct=="right" && point[1]==right){
        direct="bottom";
        right=right-1;
    }
    else if(direct=="bottom" && point[0]==bottom){
        direct="left";
        bottom=bottom-1;
    }
    else if(direct=="left" && point[1]==left){
        direct="top";
        left=left+1;
    }
    else if(direct=="top" && point[0]==top){
        direct="right";
        top=top+1;
    }
    return direct;
}

function print(str){
    console.log(str);
}

(function (){
    var input=3;
    var output=generateMatrix(input);
    print(input);
    print(output);

}());