// params: x1,y1,x2,y2
var x1 = argument0; var y1 = argument1;
var x2 = argument2; var y2 = argument3;

// code

// get offsets
var x_delta = (x2*16)-(x1*16);
var y_delta = (y2*16)-(y1*16);

// set offsets
block_matrix_offset_x[y1,x1] = x_delta;
block_matrix_offset_x[y2,x2] = -x_delta;
block_matrix_offset_y[y1,x1] = y_delta;
block_matrix_offset_y[y2,x2] = -y_delta;

// swap
var temp = block_matrix[y1,x1];
block_matrix[argument1,argument0] = block_matrix[argument3,argument2];
block_matrix[argument3,argument2] = temp;
