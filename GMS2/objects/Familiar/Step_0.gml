/// @description Insert description here
// You can write your code in this editor
if (owner>0){
	dir = point_direction(x,y,owner.x-15-random(6),owner.y-14-random(6));
	motion_add(dir,accel);	
}
speed=clamp(speed,0,maxSpeed);