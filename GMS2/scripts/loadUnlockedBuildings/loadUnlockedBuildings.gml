//BUILDINGS
//TODO:  check each line in data_buildings.csv, search unlocks for that building
charStack = ds_stack_create();
ds_stack_push(charStack,"Ragnar","Lothgar","Valkyrie","Reaper","Wizard");
while (ds_stack_size(charStack)>0)
{
	var i = ds_stack_pop(charStack);
	if (ini_key_exists("buildings",i)){ds_list_add(global.unlocksList,i);}
}
ds_stack_destroy(charStack);