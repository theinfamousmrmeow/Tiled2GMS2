/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,-9999,Title);
// Inherit the parent event
event_inherited();
x=room_width/2;
y=room_height/2;
dest_x=x;
dest_y=y;
global.i=id;
with (Camera){
	target=global.i;	
}
alarm[11]=300;