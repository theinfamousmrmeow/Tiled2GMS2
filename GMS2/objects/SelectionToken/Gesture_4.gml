/// @description Insert description here
// You can write your code in this editor


if (instance_exists(CharacterSelectIcon)){
	var icon = instance_nearest(x,y,CharacterSelectIcon);

	if (icon.unlocked && distance_to_object(icon)<4){
		sfx2DPlay(sfxBell2);
		x = icon.x;
		y= icon.y
		selection= icon.character;
		icon.action = actions.hit;
		global.character[player]=selection;
		//characterSelect(player,character);
	}
	else {
		selection = -1;	
	}
}
else {
	var icon = instance_nearest(x,y,HeldItem);
	x = icon.x;
	y= icon.y
	
	i=instance_create_depth(x,y-4,-9999,FloatText);
	i.text=""+string(object_get_name(icon.object_index));
	
	selection = icon.object_index;
	if (icon.itemType == heldItemType.weapon){
		global.gear[player,slot.primaryHand]=icon.object_index;
		sfx2DPlay(sfxBell2);
	}
	else if (icon.itemType == heldItemType.shield){
		global.gear[player,slot.offHand]=icon.object_index;
		sfx2DPlay(sfxBell2);
	}
	if (inShop() && payCost(icon.woolCost,icon.fleeceCost)){
		sfx2DPlay(sfxItemGet);
		unlockThing("weapons",object_get_name(icon.object_index));
		with (icon){instance_destroy();}
	}
}