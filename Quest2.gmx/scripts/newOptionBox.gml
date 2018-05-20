// parameters
// x, y, width, height, title, text, optionText, optionIndex
var xcoord = argument0;
var ycoord = argument1;
var width = argument2;
var height = argument3;
var title = argument4;
var deep = argument7;
//have optional paramters for creating a new box(boolean, array+array/string)

// variables
// index of box created
var ind = instance_create(xcoord, ycoord, MessageBox);

// code
// create box, assign variable values
ind.width = width;
ind.height = height;
ind.title = title;
ind.depth = deep;
for(var i=0; i<array_length_1d(argument5); i++){
    ind.optionText[i] = argument5[i];
}
for(var i=0; i<array_length_1d(argument6); i++){
    ind.optionIndex[i] = argument6[i];
}
instance_deactivate_object(ind);
var ind2 = instance_create(xcoord,ycoord,AnimBox);
ind2.sibling = ind;
ind2.width = width;
ind2.height = height;
ind2.depth = deep;

//return index of box
return ind;
