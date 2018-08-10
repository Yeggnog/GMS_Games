/*
* 'right-back' text parsing
* second version
* by Jeffrey Collins
*
* returns: an array of [parsed string, leftover]
*/

// parameters

var text = argument0;
var target = argument1;


// variables

var temp = string_copy(text,0,target);
var temp2;
var i = string_length(temp);
var arr;


// code

while(i>0 && string_char_at(temp,i) != ' ' && string_char_at(temp,i) != '!'
&& string_char_at(temp,i) != '.' && string_char_at(temp,i) != '?'){
    i--;
}
if(i < string_length(text)){
    // THIS is the residual
    temp2 = string_copy(text,i,string_length(text));
}else{
    temp2 = "";
}

if(i != 0){
    // THIS is the parsed text
    temp = string_copy(temp,0,i);
}

// return

arr[0] = temp;
arr[1] = temp2;
return arr;
