/// @description Insert description here
// You can write your code in this editort
if (action == actions.stand){
cl = string_length(currentText);
tl = string_length(targetText);

if (cl < tl){
	currentText += string_char_at(targetText,cl+1);
}
}

alarm[0]=textRate;