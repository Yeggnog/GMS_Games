// removes blocks from the grid

// vars
var look = 0;
var row = argument0;
var type = argument1;
var count = argument2;

// code
var block_matrix = LuckyNeko.block_matrix;
while(look < array_length_2d(block_matrix,row)){
    if(count > 0){
        if(block_matrix[row,look] == type){
            LuckyNeko.block_matrix[row,look] = -1;
            count -= 1;
        }
    }
    look += 1;
}

grid_fall_neko();
