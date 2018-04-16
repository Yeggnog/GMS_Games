// parses text onto a line with given length and returns residual (hopefully)

//parameters
var text = argument0; // text to parse
var target = argument1; // length of line
var boxindex = argument2; // index of calling instance

//variables
var i = 0;
var j = 0;
var count = 0;
var temp = "";

//acual parse
while(i<string_length(text)){
    j=i;
    while(j<string_length(text)-1 && string_char_at(text,j) != ' '){
        count += 1;
        j += 1;
    }
    show_debug_message("j has landed.");
    if(string_length(temp)+count <= target){
        show_debug_message("adding string '"+string_copy(text,i,i+count)+"' to temp.");
        temp += string_copy(text,i,i+count);
        i += (count+1);
    }
}
show_debug_message("i has landed.");
if(boxindex.object_index == MessageBox){
    boxindex.rawText = string_copy(text, i, string_length(text)-1);
}
show_debug_message("returning temp.");
return temp;
