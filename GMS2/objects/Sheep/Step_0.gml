

/// @description Insert description here
// You can write your code in this editor

depth=-(y+sprite_height/2);
//image_blend = getPlayerColor(player);
scr_zphysics();
switch (action){
	case actions.celebrate:
		image_index=0;
		image_speed=0;
		friction=0.1;
		if (z<=0){zspeed=0.5+random(1); direction=random(360) speed=1.5;}
		break;
	case actions.stand:
		image_index=0;
		image_speed=0;
		break;
	case actions.walk:
		image_speed=0.5;
		speed=spd;
		break;
	case actions.flee:
		if (x<room_width/2){hspeed=-5*spd;}
		else {hspeed=spd*5;}
		image_speed=1;
		break;
	case actions.walkon:
		move_towards_point(room_width/2,y,spd);
		image_speed=1;
		if (distanceToEdge()>48){
			action = actions.stand;	
		}
		break;
}

if (hspeed!=0){
	image_xscale = sign(hspeed);
}

if (hp==1){
	bodySprite=spr_sheep_wool_naked;	
}
if (hp==2){
	bodySprite=spr_sheep_wool_white;
}

if (hp<=0 && action!=actions.flee){
	bodySprite=spr_sheep_wool_naked;
	action = actions.flee;
	image_speed=1;
}

