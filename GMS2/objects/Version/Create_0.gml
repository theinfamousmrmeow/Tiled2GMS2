/// @description Insert description here
// You can write your code in this editor
depth=-9999;
f=file_text_open_read(FILE_UNLOCKS);
str="";
while (!file_text_eof(f)){
str += file_text_readln(f);
}
file_text_close(f);