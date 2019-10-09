//arg0=who?
//arg1=which slot
var item = unequipSlot(argument0,argument1);
if (item >0){
	with (item){
		instance_destroy();	
	}
}