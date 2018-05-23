// parameters
// x, y, width, height, title, text
var xcoord = argument0;
var ycoord = argument1;
//have optional paramters for creating a new box(boolean, array+array/string)

// code
// create box, assign variable values
var ind = instance_create(xcoord, ycoord, MessageBox);
ind.width = argument2;
ind.height = argument3;
ind.title = argument4;
ind.rawText = argument5;
if(ds_list_size(GlobalControl.boxes) > 0){
    ind.depth = GlobalControl.boxes[|0].depth-1;
}else{
    ind.depth = 0;
}
instance_deactivate_object(ind);
var ind2 = instance_create(xcoord,ycoord,AnimBox);
ind2.sibling = ind;
ind2.width = argument2;
ind2.height = argument3;
if(ds_list_size(GlobalControl.boxes) > 0){
    ind2.depth = GlobalControl.boxes[|0].depth-1;
}else{
    ind2.depth = 0;
}
ds_list_add(GlobalControl.boxes,ind,ind2);

//return index of box
return ind;
