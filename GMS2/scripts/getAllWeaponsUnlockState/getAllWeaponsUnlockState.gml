//argument0=true or false.

var theStack = ds_stack_create();

height = ds_grid_height(global.grid_weapons);

for (var ii=1;ii<height;ii++)
	{
			weaponName = ds_grid_get(global.grid_weapons,weaponColumns.name,ii);
			if ( (argument0 == true && weaponIsUnlocked(weaponName)) 
			|| (argument0 == false && !weaponIsUnlocked(weaponName)) ){
				ds_stack_push(theStack,weaponName);
			}
	}
	
return theStack;
	