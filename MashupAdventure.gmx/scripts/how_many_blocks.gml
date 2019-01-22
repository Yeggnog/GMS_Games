var row = argument0;
var type = argument1;

var count = 0;

for(var i=0; i<array_length_2d(LuckyNeko.block_matrix,row); i++){
    if(LuckyNeko.block_matrix[row,i] == type){
        count += 1;
    }
}

return count;
