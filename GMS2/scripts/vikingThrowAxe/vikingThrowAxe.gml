	
if (actionIsFree() and hasWeapon()){
	action = actions.throw;
	speed=0;
	sprite_index=spr_throw;
	image_index=1;
	image_speed=0.25;
	alarm[1]=image_speed*room_speed*image_number/3;
}