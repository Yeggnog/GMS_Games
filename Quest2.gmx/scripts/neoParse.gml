// parses text onto a line with given length and returns residual (hopefully)

//parameters
var text = argument0; // text to parse
var target = argument1; // length of line
show_debug_message("target = "+string(target)+".");
var boxindex = argument2; // index of calling instance
var shortstop = 50;

//short-circuit
if(string_length(text) <= target){
    return text;
}

//variables
var i = 0;
var j = 0;
var count = 0;
var temp = "";

//acual parse
while(i<string_length(text) && i<target && shortstop > 0){
    j=i;
    while(j<string_length(text) && string_char_at(text,j) != ' '){
        count += 1;
        j += 1;
    }
    show_debug_message("j has landed. i="+string(i));
    if(string_length(temp)+count <= target){
        show_debug_message("adding string '"+string_copy(text,i,i+count)+"' to temp.");
        temp += string_copy(text,i,i+count);
        i += (count+1);
    }
    shortstop -= 1;
}
show_debug_message("i has landed.");
if(boxindex.object_index == MessageBox){
    boxindex.rawText = string_copy(text, i, string_length(text)-1);
}
show_debug_message("returning '"+string(temp)+"'. i="+string(i)+", j="+string(j));
return temp;
