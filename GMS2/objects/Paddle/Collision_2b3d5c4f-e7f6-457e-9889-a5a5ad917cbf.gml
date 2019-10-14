/// @description Insert description here
// You can write your code in this editor

//other.direction=point_direction(x,y,other.x,other.y);

if (other.action==actions.held) return;

if (action == actions.KO || action == actions.celebrate){return;}

if (player == other.player && other.age > 15 && action!=actions.hit){
	//Catch the axe
	if (!hasWeapon() && distanceToEdge()>distanceToEdgeOther(other)) || (axesHeld<axesMax && hasShield==false){
		sfxTypePlay(sfxAxeCatch());
		action = actions.catch;
		//with other instance_destroy();
		//axesHeld++;
		if (other.object_index==Morningstar){
			other.len/=8;	
		}
		equipItem(id,other.id,slot.primaryHand);
		other.image_angle=0;
		other.direction=0;
		alarm[1]=TICKS_TO_SECONDS*1;
	}
	else {
		//other.player=0;
		//Harmless bounce
		if (other.destroyOnHit){
			with other instance_destroy();	
		}
		other.direction=point_direction(x,y,other.x,other.y);
		shield_jitter = 5;
		sfxTypePlay(sfxShieldDeflects());
		with (other) {
			speed*=BOUNCE_SPEEDUP;	
		}
	}
}

if (other.player !=player && action != actions.hit){
	
	other.age=0;

	//Hit Person
	if( hasShield == false || distanceToEdge()>distanceToEdgeOther(other)){
		
		//GET HIT BY ENEMY AXE;
		if (other.destroyOnHit){
			with other instance_destroy();	
		}
		sfxTypePlay(sfxVikingStruck());
		action = actions.hit;
		var dam = other.damage;
		if (other.owner == id){dam/=2;}
		hp-=dam;
		jitter= 5;
		alarm[0]=TICKS_TO_SECONDS*1;
		zspeed=min(0.5+dam/20,4);
		screenShake(5);
		//
		if (other.object_index==Beetlerang){
			inflictStatus(id,statuses.poison,10);	
		}
		
		
		//FINISH HIM
		if (global.game_state == gameState.suddenDeath){
			action = actions.KO;
			zspeed=3;
			direction=point_direction(x,y,room_width/2,room_height/2)+180;
			speed=5;
			with HUD {roundEnd()};
		}
		//CATCH YOUR AXE;

	}
	//Hit Shield
	else {
		//Deflect Sound
		if (other.destroyOnHit){
			with other {instance_destroy();}
		}
		hp-=5;
		other.direction=point_direction(x,y,other.x,other.y);
		other.player = getPlayerNumber(id);
		shield_jitter = 5;
		sfxTypePlay(sfxShieldDeflects());
		with (other) {
			speed*=BOUNCE_SPEEDUP;	
		}
	}
}