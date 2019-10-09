/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/// @description Insert description here
// You can write your code in this editor

if (holder>0 && visible){
	
	holdX = holder.handX[heldSlot]+lengthdir_x(len,pivot);
	holdY = holder.handY[heldSlot]+lengthdir_y(len,pivot);
	tail.x = holder.x+(xscale*2)+holder.handX[heldSlot];
	tail.y = holder.y+holder.handY[heldSlot];
	x = holder.x+(xscale*2)+holdX;
	y = holder.y+holdY;
	z = holder.z;
}
