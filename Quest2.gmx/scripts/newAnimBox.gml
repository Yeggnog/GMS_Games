// parameters
// x, y, width, height, title, text
var xcoord = argument0;
var ycoord = argument1;
//have optional paramters for creating a new box(boolean, array+array/string)

// code
// create box, assign variable values
var ind2 = instance_create(xcoord,ycoord,AnimBox);
ind.sibling = ind;
ind.width = argument2;
ind.height = argument3;
if(ds_list_size(GlobalControl.boxes) > 0){
    ind.depth = GlobalControl.boxes[|0].depth-1;
}else{
    ind.depth = 0;
}
ds_list_add(GlobalControl.boxes,ind);

//return index of box
return ind;
