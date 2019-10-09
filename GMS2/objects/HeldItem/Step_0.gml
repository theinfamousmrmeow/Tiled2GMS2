/// @description Insert description here
// You can write your code in this editor
if (holder>0){
	
	switch (holder.action){
		case actions.hit:
		case actions.KO:
		case actions.celebrate:
		case actions.sulk:
			visible=0;
			break;
		default:
			visible=1;
			break;
	}
	
	
	
	xscale=holder.xscale;
	if (itemType = heldItemType.weapon){
		depth = holder.depth -10;
	}
	else {
		
		if (holder.action == actions.catch){visible=false;
	}
		
		switch (heldSlot){
		
		case slot.back:
		case slot.belt:
			depth = holder.depth+1;
			visible=false;
			break;
		default:
		depth = holder.depth-1;
		break;
		
		}
		
		}
}

if (heldSlot== slot.belt || heldSlot = slot.back){
	visible=false;	
}