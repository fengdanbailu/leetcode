/**
 *
 * @param matrix
 * @returns {Array}
 */
var spiralOrder = function(matrix) {
    var list=[];
    var height=matrix.length;
    if(height==0){
        return [];
    }
    var width=matrix[0].length;
    init_var(height,width);
    var pl;
    for(var i=0;i<height*width;i++){
        pl=next(pl);
        list.push(matrix[pl[0]][pl[1]]);
    }
    return list;
};

/**
 * @param {number} n
 * @return {number[][]}
 */
var top,right,bottom,left,direct;
var init_var=function(height,width){
    top=1;
    right=width-1;
    bottom=height-1;
    left=0;
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
    var input=[
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9,10,11,12]
    ];
    var output=spiralOrder(input);
    print(input);
    print(output);

}());