/// @description Insert description here
// You can write your code in this editor

if (hp<=0){
	instance_destroy();	
	i=instance_create_depth(x,y,0,SheepRevive);
	if (x<room_width/2){
		i.player=2;
		i.x =room_width+32
	}
	else {
		i.player=1;
		i.x = 0-32;;
	}
}

if (x>room_width) x=room_width;
if (y>room_height) y=room_height;
if (y<0) y=0;
if (x<0) x=0;