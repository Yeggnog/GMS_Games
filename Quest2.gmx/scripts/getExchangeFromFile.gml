// parameters
var fileName = argument0+".txt";
var fileIndex;
var startLine = argument1;
var exchange = "";

// open file
fileIndex = file_text_open_read(fileName);
if(fileIndex == -1){
    return "File "+fileName+" not found.";
}
// go to start line
for(var i=0; i<startLine; i++){
    if(!file_text_eof(fileIndex)){
        file_text_readln(fileIndex);
    }
}

// read text
while(!file_text_eof(fileIndex)){
    var temp = file_text_readln(fileIndex);
    if(string_copy(temp,1,4) != "----"){
        exchange += temp;
    }else{
        break;
    }
}
exchange = string_upper(exchange);

// close file
file_text_close(fileIndex);

// return
return exchange;
