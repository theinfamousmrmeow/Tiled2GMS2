/// @description Complete your throw!
// You can write your code in this editor
if (action == actions.throw){
	if (hasWeapon()){
		sfxTypePlay(sfxAxeThrow());
		i=getItemInSlot(slot.primaryHand);
		unequipSlot(id,slot.primaryHand);
		//i=instance_create_depth(x,y,depth,Axe);
		i.action=actions.thrown;
		i.speed=i.throwSpeed;
		i.age=0;
		i.direction = point_direction(x,y,room_width/2,y);
		if (i.object_index=Morningstar){
			i.direction = point_direction(x,y,i.x,i.y);	
		}
		i.player = player;
	}
}

else if (action == actions.catch){
	action = actions.stand;	
}