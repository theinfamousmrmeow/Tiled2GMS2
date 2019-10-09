/// @description Insert description here
// You can write your code in this editor
event_inherited();
switch(action){
	
	case actions.held:
		image_angle=0;
		angle=0;
		image_index=1;
		image_speed=0;
	break;
	
	case actions.thrown:
	image_index=0;
	angle-=((speed*5)%360)*sign(xscale);
	if (hspeed>0) {xscale=1;}
	else {xscale=-1;}


	break;
}