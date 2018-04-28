// parameters

var boxIndex = argument0;
var text = argument1;
var target = argument2;


// variables

var temp = string_copy(text,0,target);
var i = string_length(temp);


// code

while(i>0 && string_char_at(temp,i) != ' '){
    i--;
}

if(boxIndex.object_index == MessageBox){
    boxIndex.rawText = string_copy(text,i,string_length(text));
}

return temp;
