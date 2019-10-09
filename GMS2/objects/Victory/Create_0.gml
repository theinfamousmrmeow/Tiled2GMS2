/// @description Insert description here
// You can write your code in this editor
i=instance_create_depth(x,y,-9999,TextFlash)
if (countVictories(1)>countVictories(2)){
i.text = "RED VICTORY";}
else {
i.text = "BLUE VICTORY";}
alarm[0]=TICKS_TO_SECONDS*3;