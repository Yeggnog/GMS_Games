/*

// parameters
var tem = argument0;

// variables
var i = 0;
var marker = 0;
var pick = ds_list_create();

// code
while(i > 0){
    if(string_char_at(tem,i) == ']'){
        marker = i;
    }
    if(string_char_at(tem,i) == '['){
        ds_list_add(pick,string_copy(tem,i,marker-i));
        tem = (string_copy(tem,0,i)+string_copy(tem,marker,string_length(string)));
        marker = string_length(tem);
    }
    i--;
}
for(var j=0; j<ds_list_size(pick); j++){
    switch(string_copy(pick[|j],1,1)){
        case "n":
        //new line
        break;
        case "e":
        //end current box print
        break;
        case "o":
        //option box with given option pairs(parse later)
        break;
        case "a":
        //action with given index
        break;
    }
}

// prevent memory leaks
ds_list_destroy(pick);

return tem;

*/
