// parses text onto a line with given length and returns residual (hopefully)

//parameters
var text = argument0; // text to parse
var target = argument1; // length of line
show_debug_message("target = "+string(target)+".");
var boxindex = argument2; // index of calling instance
//var shortstop = false;

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
while(i<string_length(text) && string_length(temp)<target){
    j = i;
    //count = 0;
    while(j<string_length(text) && j<target && string_char_at(text,j) != ' '){
        //count += 1;
        j += 1;
    }
    count = j-i;
    //show_debug_message("j has landed. j="+string(j)+" count = "+string(count));
    if(string_length(temp)+count <= target){
        show_debug_message("i="+string(i)+" i+count="+string(i+count)+" j="+string(j));
        //show_debug_message("adding string '"+string_copy(text,i,i+count)+"' to temp.");
        temp += string_copy(text,i,i+count);
    }//else{
        //shortstop = true;
    //}
    i = (i+count+1);
}
show_debug_message("i has landed.");
if(boxindex.object_index == MessageBox){
    boxindex.rawText = string_copy(text, i, string_length(text)-1);
}
show_debug_message("returning '"+string(temp)+"'. i="+string(i)+", j="+string(j));
return temp;
