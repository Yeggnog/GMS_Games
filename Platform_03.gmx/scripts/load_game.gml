//parameter
var file_ind = argument0;

//read file
var int = 0;
file = file_text_open_read(working_directory + "/Seed.txt");
while (!file_text_eof(file)){
Pass[int++] = file_text_readln(file);
}
file_text_close(file);
test_password = Pass[argument0];

var int1 = 0;
file = file_text_open_read(working_directory + "/Dialogues.txt");
while (!file_text_eof(file)){
Dialogues[int1++] = file_text_readln(file);
}
file_text_close(file);
current_message = Dialogues[real(string_copy(test_password,19,2))];
