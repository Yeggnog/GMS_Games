//parameters
var file_ind = argument0;

//read file
var int = 0;
var Pass;
file = file_text_open_read(working_directory + "/Seed.txt");
while (!file_text_eof(file)){
Pass[int++] = file_text_readln(file);
}
file_text_close(file);

//get default password
var pass = Pass[5];

//edit entry
Pass[file_ind] = pass;

//write to file
var int = 0;
file = file_text_open_write(working_directory + "/Seed.txt");
for(i=0;i<array_length_1d(Pass);i++){
file_text_write_string(file, Pass[i]);
}
file_text_close(file);
