/// @description Insert description here
// You can write your code in this editor

//Calculated Stats
if (gearWeight>0){
encumbrance = min(strength / gearWeight,1);
}
else encumbrance = 1;
if (!isAI){moveSpeed = agility * encumbrance;}
else {moveSpeed = (agility * encumbrance)/2;}

depth=-(y+sprite_height/2);
scr_zphysics();
name = getCharacterName(object_index);
hasAxe = (axesHeld>0);
if (hasWeapon()){axesHeld=1} else {axesHeld=0;}

if (global.game_mode == gameMode.overworld) return;

if (global.game_state == gameState.suddenDeath){
	hasShield=false;	
}

switch (action){
	case actions.stand:
	case actions.walk:
	break;
	case actions.walkon:
		if (xscale = -1 && x>dest_x) || (xscale = 1 && x<dest_x){
			x = x + (1*xscale);	
		}
		else {
			x = dest_x;
			dest_y = y;
			action = actions.stand;	
		}

	break;
	
	case actions.celebrate:
		if (zspeed>0) {bodyImage=1}
		else {bodyImage=0;}
		if (z==0) zspeed=0.5+random(1);
		speed=0;

	break;
	case actions.catch:
		
		break;
	case actions.hit:
		if (z==0) action = actions.walk;
		speed=0;
		break;
	case actions.KO:
		if (z==0){
			zspeed=1;
		}
		break;
	
}



if (action == actions.throw || action == actions.hit || action == actions.KO){
	dest_y = y;
}

else {
	image_blend=c_white;
}



//


if (actionIsFree()){
	if (speed>0 && action !=actions.catch){
		action = actions.walk;
	}

	if (abs(y-dest_y)<moveSpeed){
		y = dest_y;	
		speed=0;
	}
	else {
		move_towards_point(x,dest_y,moveSpeed);
	}
}

if (global.game_state==gameState.matchOver){return;}

///Inputs and actions
if (stateLocked() || onOverworld()){ return;}//Quit if I can't do input right now.

if ((keyboard_check(vk_up) && player==2) || 
(keyboard_check(ord("W")) && player==1)){
	dest_y = y-moveSpeed;
}
if (keyboard_check(vk_down) && player==2) || (player==1 && keyboard_check(ord("S"))){
	dest_y = y+moveSpeed;
}
if (
(keyboard_check_pressed(vk_space) && player==2) || (player==1 &&keyboard_check_pressed(ord("F")))
|| isAI && (ceil(random(20))==20)
)
 && (!instance_exists(Splash)){
	//THROW AXE!
	vikingThrowAxe();
}
