//arg0 = who is unequiping
//arg1 = slot
var item = argument0.gear[argument1];

if (item>0){
	argument0.gearWeight -= item.weight;
	argument0.gear[argument1]=-1;
	item.holder = -1;
	item.heldSlot = -1;
}
return item;