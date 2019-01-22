// updates the grid
for(var i=0; i<3; i++){
    var block_matrix = LuckyNeko.block_matrix;
    var block_matrix_offset_x = LuckyNeko.block_matrix_offset_x;
    var count = 0;
    var look = 0;
    while(look < array_length_2d(block_matrix,i)-1){
        if(block_matrix[i,look] == -1 && block_matrix[i,look+1] != -1){
            var temp = block_matrix[i,look];
            LuckyNeko.block_matrix[i,look] = block_matrix[i,look+1];
            LuckyNeko.block_matrix[i,look+1] = temp;
            count += 1;
            LuckyNeko.block_matrix_offset_x[i,look] = 16*count;
            if(look > 0){
                look -= 1;
            }
        }else{
            look += 1;
        }
    }
}
