// params: x1,y1,x2,y2
var x1 = argument0; var y1 = argument1;
var x2 = argument2; var y2 = argument3;

// code

// get offsets
var x_delta = x2-x1;
var y_delta = y2-y1;

// set offsets
block_matrix_offset[y1,x1,0] = -x_delta;
block_matrix_offset[y2,x2,0] = x_delta;
block_matrix_offset[y1,x1,1] = -y_delta;
block_matrix_offset[y2,x2,1] = y_delta;

// swap
var temp = block_matrix[y1,x1];
block_matrix[argument1,argument0] = block_matrix[argument3,argument2];
block_matrix[argument3,argument2] = temp;
