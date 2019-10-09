/// @description Insert description here
// You can write your code in this editor

//friction+=0.01;

if (y<0-sprite_height/2){y++; vspeed=0;}
if (y>sprite_height/4+room_height && vspeed>0){vspeed=0;}
accel+=0.15;

if (action == actions.walkon){

	if (!slowed && y<target_y){
		//y++;	
	}

	if (!slowed && y>target_y){
		vspeed=-vspeed*0.6;
		slowed=true;
	}

	if (abs(y-target_y))<=1{
		action = actions.stand;
		alarm[0]=TICKS_TO_SECONDS*2;
	}
	else {
		motion_add(point_direction(x,y,target_x,target_y),accel);
	}

}

if (action == actions.stand){
	//image_blend=c_lime;
	friction=0.25;
	vspeed=0;
	//motion_add(point_direction(x,y,target_x,target_y),accel);
	if (y<target_y){
		
	}
	
}

if (action == actions.flee){
	//image_blend=c_red;
	friction=0;
	image_angle-=45/2;
	vspeed=0;
	hspeed+=accel;
	if (x>room_width+sprite_width){
		instance_destroy();	
	}

}

speed = clamp(speed,-maxSpeed,maxSpeed);