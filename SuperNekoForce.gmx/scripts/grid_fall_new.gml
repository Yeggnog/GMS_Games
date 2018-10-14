// updates the grid
for(var i=0; i<4; i++){
    var count = 0;
    var look = 0;
    while(look < array_length_2d(block_matrix,i)-1){
        if(block_matrix[i,look] == -1 && block_matrix[i,look+1] != -1){
            var temp = block_matrix[i,look];
            block_matrix[i,look] = block_matrix[i,look+1];
            block_matrix[i,look+1] = temp;
            count += 1;
            block_matrix_offset_x[i,look] = 16*count;
            if(look > 0){
                look -= 1;
            }
        }else{
            look += 1;
        }
    }
}
