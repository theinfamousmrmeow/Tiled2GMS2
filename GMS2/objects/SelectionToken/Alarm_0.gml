/// @description Insert description here
// You can write your code in this editor
blink = !blink;
if (blink){
	alarm[0]=TICKS_TO_SECONDS/4;
}
else {
alarm[0]=TICKS_TO_SECONDS/2;
}