// parameters

var boxIndex = argument0;
var text = argument1;
var target = argument2;


// variables

var temp = string_copy(text,0,target);
var i = string_length(temp);


// code

while(i>0 && string_char_at(temp,i) != ' ' && string_char_at(temp,i) != '!'
&& string_char_at(temp,i) != '.' && string_char_at(temp,i) != '?'){
    i--;
}
if(boxIndex.object_index == MessageBox){
    if(i < string_length(text)){
        boxIndex.rawText = string_copy(text,i,string_length(text));
    }else{
        boxIndex.rawText = "";
    }
}
if(i != 0){
    temp = string_copy(temp,0,i);
}
//temp = markup(temp);

show_debug_message(temp);
return temp;
