// adds a random row of blocks to the matrix

// code
var new;
new[0] = irandom_range(0,3);
new[1] = irandom_range(0,3);
new[2] = irandom_range(0,3);
new[3] = irandom_range(0,3);

var all_full = true;
for(var i=0; i<4; i++){
    var look = 0;
    var flag = false;
    while(!flag){
        if(look < array_length_2d(block_matrix,i)){
            if(block_matrix[i,look] != -1){
                look += 1;
            }else{
                block_matrix[i,look] = new[i];
                flag = true;
                all_full = false;
            }
        }else{
            flag = true;
        }
    }
}
if(all_full){
    clear_grid();
}
