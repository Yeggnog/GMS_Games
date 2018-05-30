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
var file = working_directory + "/Names.txt";
var file_index = file_text_open_write(file);
    for(var i=0; i<ds_list_size(list_name)-1; i++){
        file_text_write_string(file_index,list_name[| i]+"#");
        //if(i = temp){
            file_text_writeln(file_index);
        //}
    }
file_text_close(file_index);
var file = working_directory + "/HighScores.txt";
file_index = file_text_open_write(file);
    for(var i=0; i<ds_list_size(list_real)-1; i++){
        file_text_write_real(file_index,list_real[| i]);
        file_text_writeln(file_index);
    }
file_text_close(file_index);
ds_list_destroy(list_real);
ds_list_destroy(list_name);

level_end_menu.progress += 1;
