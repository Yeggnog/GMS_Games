// adds a randomly generated row to the grid

// code

// new RNG (old RNG wasn't random for some reason)
var new;
new[0] = floor(random_range(0,1)*4);
new[1] = floor(random_range(0,1)*4);
new[2] = floor(random_range(0,1)*4);
new[3] = floor(random_range(0,1)*4);

// add to top of grid
for(var i=0; i<4; i++){
var len = array_length_2d(block_matrix,i)-1;
    if(block_matrix[i,len] == -1){
        block_matrix[i,len] = new[i];
    }
}

// gravity
grid_fall_new();
