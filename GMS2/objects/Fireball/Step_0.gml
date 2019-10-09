/// @description Insert description here
// You can write your code in this editor
event_inherited();
switch(action){
	case actions.thrown:
	image_speed=1;
	//direction+=random(4)-2;
	angle=0;
	break;
	default:
		image_speed=0.25;
	break;
}
