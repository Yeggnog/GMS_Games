//get parameters
pts = argument0;
name = argument1;

//check against all entries
var list_real = ds_list_create();
var list_name = ds_list_create();
for(var i=0; i<array_height_2d(HighScoreCounter.highscores); i++){
    ds_list_add(list_real,HighScoreCounter.highscores[i,1]);
    ds_list_add(list_name,HighScoreCounter.highscores[i,0]);
}

var temp = ds_list_size(list_real)-1;
while(temp > 0 && list_real[| temp-1] < pts){
    temp -= 1;
}
ds_list_insert(list_real,temp,pts);
ds_list_insert(list_name,temp,name);
//ds_list_delete(list_real,ds_list_size(list_real));
//ds_list_delete(list_name,ds_list_size(list_name));

var file = working_directory + "/Names.txt";
if(file_exists(file)){
    file_delete(file);
}
var file_index = file_text_open_write(file);
    for(var i=0; i<ds_list_size(list_name)-1; i++){
        //show_debug_message("Wrote name '"+list_name[|i]+"' to "+file);
        file_text_write_string(file_index,list_name[|i]);
        //file_text_writeln(file_index);
    }
file_text_close(file_index);
var file = working_directory + "/HighScores.txt";
if(file_exists(file)){
    file_delete(file);
}
file_index = file_text_open_write(file);
    for(var i=0; i<ds_list_size(list_real)-1; i++){
        ///show_debug_message("Wrote score '"+string(list_real[|i])+"' to "+file);
        file_text_write_real(file_index,list_real[|i]);
        file_text_writeln(file_index);
    }
file_text_close(file_index);
for(var i=0; i<ds_list_size(list_real); i++){
    HighScoreCounter.highscores[i,0] = list_name[|i];
    HighScoreCounter.highscores[i,1] = list_real[|i];
}
ds_list_destroy(list_real);
ds_list_destroy(list_name);


//level_end_menu.progress += 1;
