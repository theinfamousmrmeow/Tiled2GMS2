//arg0 = who is equipping
//arg1 = item id
//arg2 = slot
unequipSlot(argument0,argument2);
argument0.gearWeight += argument1.weight;
argument0.gear[argument2]=argument1;
argument1.holder = argument0;
argument1.heldSlot = argument2;
argument1.action = actions.held;