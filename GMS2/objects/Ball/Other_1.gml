/// @description Bounce off edge of worlds
// You can write your code in this editor

//move_bounce_all(false);
if (holder<=0){
if (bounceOnWalls){

var sound = false;

if (y>=room_height){
	vspeed*=-1;
	y=room_height-1;
	sound=true;
}

if (y<=0){
	sound=true;
	vspeed*=-1;
	y=1;
}


if (x>=room_width){
	hspeed=abs(hspeed)*-1;
	x=room_width-1;
	sound=true;
}

if (x<=0){
	hspeed=abs(hspeed);
	x=1;
	sound=true;
}

if (sound){
	sfxTypePlay(sfxAxeBounce());	
}
}
}
//speed*=BOUNCE_SPEEDUP;