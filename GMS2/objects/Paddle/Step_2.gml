/// @description Insert description here
// You can write your code in this editor

if (global.game_mode=gameMode.overworld){
	if (path_positionprevious!=path_position){
		if (direction<=270-45 && direction>=90+45){
			xscale=-1;
		}
		if (direction<=45 || direction>=270+45){ xscale=1;}
		image_speed=0.125;
	}
	else {image_index=0; image_speed=0;}
}

switch (action){
	case actions.stand:
	case actions.walk:
	case actions.walkon:
	switch (axesHeld){
		case 0:
		spr_body = spr_throw;
		break;
		case 1:
		spr_body = spr_holdone;
		break;
		case 2:
		spr_body = spr_holdtwo;
		break;
	}
	//case actions.catch:
	if (speed>0 || action == actions.walkon){image_speed=1;}else{image_speed=0; image_index=0;}
	sprite_index = spr_legs_walk;
	
	break;
	
	case actions.celebrate:
		spr_body =  spr_celebrate;
		sprite_index = spr_body;
		image_speed=0.5;
	break;
	case actions.catch:
		spr_body = spr_catch
		
		break;
	case actions.hit:
	case actions.KO:
		spr_body = spr_hurt;
		break;
	case actions.throw:
		spr_body = spr_throw;
		sprite_index = spr_body;
	break;
}

if (zspeed>0){spr_walk = spr_legs_hurt;}
else {spr_walk = spr_legs_walk;}

switch (status){
	case statuses.normal:
		image_blend=c_white;
	break;
	case statuses.poison:
		image_blend=c_lime;
	break;
		
}
