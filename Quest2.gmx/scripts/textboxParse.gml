//--------[Script: textboxParse]--------
//Parses a given block of text for putting into a text box
//----[Parameters]----
//string text, the block of text to parse
text = argument0;
//index, the index of the instance calling the script
index = argument1;
//----[script variables]----
start = 0;
lineIndex = 0;
wlimit = index.width-2;
hlimit = index.height-2;
ds_list_clear(index.lines);

//deal with line breaks in the text
/*for(i=0; i<string_length(text); i++){
    if(string_char_at(text,i) == "\#"){
        string_delete(text,i,1);
        i--;
    }
}*/

for(i=0; i+wlimit<string_length(text); i+=wlimit){
    if(ds_list_size(index.lines) < hlimit){
        var temp = string_copy(text,start,wlimit);
        if(string_char_at(temp,0) == " "){
            temp = string_copy(temp,1,string_length(temp)-1);
        }
        ds_list_add(index.lines,temp);
        //show_debug_message("LINE INDEX IS "+string(lineIndex));
        //index.lines[| lineIndex] = temp;
        lineIndex += 1;
        start += wlimit;
    }
}
//show_debug_message(string(start)+" / "+string(wlimit));
// LET'S JUST REWRITE THIS BIT HERE
temp2 = string_copy(text,start,string_length(text)+1-start);
temp3 = temp2;
if(start < string_length(text)){
    while(ds_list_size(index.lines) < hlimit){
        if(string_length(temp3) > wlimit){
            temp4 = string_copy(temp3,wlimit,string_length(temp3)-wlimit);
        }else{
            temp4 = temp3;
        }
        ds_list_add(index.lines, temp3);
        temp3 = temp4;
    }
    //show_debug_message(temp2);
    return "" + temp2;
}else{
    return "" + temp2;
}
