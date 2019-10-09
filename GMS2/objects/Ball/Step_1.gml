/// @description State BEHAVIOR
// You can write your code in this editor
age++;

switch(action){
	
	case actions.held:
		speed=0;
		direction=0;
		if (charge<maxCharge){charge++;}

	break;
	case actions.thrown:
		charge=0;
		speed = min(speed,maxSpeed);

	if (direction< (90 + MINBOUNCEANGLE)) && (direction> (90 - MINBOUNCEANGLE)){
		if (direction>90){
			direction=90+MINBOUNCEANGLE;	
		}
		else if (direction<90){
			direction=90-MINBOUNCEANGLE;	
		}
	}
	break;
}

//Don't go straight up and down!!
if (action!=actions.held){
	if (direction==90 || direction==270){
		direction+=random(6)-3;
	}
}


	if (player!=0 && action==actions.thrown){
		//image_blend = getPlayerColor(player);
		//image_blend = c_white;
		if (player==1) spawnParticleAbove(x,y+sprite_height/5-1,global.p_axe,1);
		else spawnParticleAbove(x,y+sprite_height/5-1,global.p_axe_blue,1);
	}