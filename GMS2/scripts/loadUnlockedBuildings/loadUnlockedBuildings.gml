//BUILDINGS
//TODO:  check each line in data_buildings.csv, search unlocks for that building
var charStack = ds_stack_create();

global.grid_buildings = load_csv(working_directory + "\data_buildings.csv")

var grid = global.grid_buildings;
for (var i=0;i<ds_grid_height(grid);i++){
var name = ds_grid_get(grid,0,i);
ds_stack_push(charStack,name);
}

while (ds_stack_size(charStack)>0)
{
	var i = ds_stack_pop(charStack);
	if (ini_key_exists("buildings",i)){
		ds_list_add(global.unlocksList,i);
		revealBuilding(i);
		}
}
ds_stack_destroy(charStack);

