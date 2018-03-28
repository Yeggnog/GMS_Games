//read file
var int = 0;
file = file_text_open_read(working_directory + "/Seed.txt");
while (!file_text_eof(file)){
Pass[int++] = file_text_readln(file);
}
file_text_close(file);
test_password = Pass[5];
//show_debug_message(file_index);

var int1 = 0;
file = file_text_open_read(working_directory + "/Dialogues.txt");
while (!file_text_eof(file)){
Dialogues[int1++] = file_text_readln(file);
}
file_text_close(file);
current_message = Dialogues[real(string_copy(Pass[5],19,2))];
