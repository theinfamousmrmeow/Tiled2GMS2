/// @description Insert description here
// You can write your code in this editor

if (holder>0){
	if (heldSlot == slot.primaryHand || heldSlot == slot.offHand){
	holdX = holder.handX[heldSlot];
	holdY = holder.handY[heldSlot];
	}
	
	else {
		holdX = 0;
		holdY = 0;
	}
	
	x = holder.x+(xscale*2)+holdX;
	y = holder.y+holdY;
	z = holder.z;
}
