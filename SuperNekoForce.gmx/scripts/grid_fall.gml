// updates the grid
for(var i=0; i<4; i++){
    var count = 0;
    var look = 0;
    var flag = false;
    while(look < array_length_2d(block_matrix,i)){
        if(!flag){
            if(block_matrix[i,look] == -1){
                count += 1;
            }else{
                flag = true;
            }
        }
        look += 1;
    }
    for(var j=0; j<count; j++){
        for(var k=0; k<6; k++){
            if(k<5){
                block_matrix[i,k] = block_matrix[i,k+1];
                block_matrix_offset_x[i,k] += 16;
            }else{
                block_matrix[i,k] = -1;
            }
        }
    }
}
