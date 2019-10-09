/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,-9999,FX_fadein);
audio_stop_all();
bgmStart(bgmTitle);
// Inherit the parent event
event_inherited();
text="OVERWORLD";
y=room_height*(11/16)
x=room_width*1/2
baseScale=2;