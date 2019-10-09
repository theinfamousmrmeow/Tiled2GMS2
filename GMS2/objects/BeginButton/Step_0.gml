/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (distance_to_point(dest_x,dest_y)>speed){
	motion_add(point_direction(x,y,dest_x,dest_y),0.1);
	speed = clamp(speed,0,1);
}
else {speed=0; x=dest_x; y=dest_y;}