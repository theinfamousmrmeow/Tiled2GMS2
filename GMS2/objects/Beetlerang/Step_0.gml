/// @description Insert description here
// You can write your code in this editor
event_inherited();
switch(action){
	case actions.thrown:
	image_speed=0.5;
	direction+=random(4)-2;
	angle=direction-90;
	break;
	default:
		image_speed=0.25;
		angle=0;
	break;
}
