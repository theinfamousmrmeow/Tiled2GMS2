//arg0=string name of weapon
if (ds_list_find_index(global.unlocksList,argument0)>=0){
	return true;
};
else return false;