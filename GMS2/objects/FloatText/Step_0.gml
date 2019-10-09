/// @description Insert description here
// You can write your code in this editor
if (action==actions.walkon){
	image_alpha*=1.2
	if (image_alpha>=1){
		image_alpha=1;
		speed=0.3;
		direction=90;
		friction=0.01;
		image_blend=c_yellow;
		action=actions.stand;
		alarm[2]=5;
		alarm[0]=TICKS_TO_SECONDS*1;
		//gravity=0.01
		//gravity_direction=90;
		speed=0;
	}
}
if (action == actions.flee){
	image_alpha/=1.1;
	if (image_alpha<=0.01){instance_destroy();}
}

if (text == "SUDDEN DEATH"){
	image_blend = choose(c_yellow,c_fuchsia,c_red);	
}