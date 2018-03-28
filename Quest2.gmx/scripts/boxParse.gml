//--------[Script: boxParse]--------
//Parses a given block of text for putting into a text box
//----[Parameters]----
//string text, the block of text to parse
text = argument0;
//boolean wrap, whether the parsing wraps words around to the next line
//var wrap = argument1;
//index, the index of the instance calling the script
index = argument1;
//----[returns]----
//any portion of text that does not make it into the lines list
//----[script variables]----
lastSpace = 0;
start = 0;
//wlimit = index.width-2;
wlimit = 20;
hlimit = index.height-2;

//repeat for all three lines
for(i=0; i < hlimit; i++){
    //go through the maximum line capacity, scanning for the last space
    //for(j=start; j<(wlimit+start); j++){
    var j = start;
    while(j<(wlimit+start)){
        if(string_char_at(text,j) == " "){
        lastSpace = j;
        }
        if(j<string_length(text)){
        j++;
        }
    }
    if(lastSpace == 0){
        lastSpace = wlimit;
    }
    var temp = string_copy(text, start, string_length(text)-lastSpace);
    show_debug_message("THE THING: "+temp);
    ds_list_add(index.lines, temp);
    start = lastSpace;
}
return string_copy(text, start, string_length(text)-lastSpace);