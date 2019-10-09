//FOR EACH ROW in WeaponsCSV, read that row from Unlocks INI
//Add to global.unlocks[unlocks.weapons,i] as a String name of the weapon
//When a weapon gets unlocked, do ini_write_real("weapons",stringNameOfWeapon,1);
//When populating store of unlocked weapons, just iterate through the array and populate.
//global.unlocks[unlocks.weapons,i] = ini_read_real("weapons",weaponName,0);
//if (ini_read_string("weapons",weaponName,0)==1) then global.unlocks[unlocks.weapons,i]=weaponName;

ini_open(FILE_UNLOCKS);
var grid = global.grid_weapons;
var height = ds_grid_height(grid);

for (var i=0;i<height;i++)
{
	weaponName = ds_grid_get(global.grid_weapons,weaponColumns.name,i);
	if (ini_read_real("weapons",weaponName,0)==1) {ds_list_add(global.unlocksList,weaponName);}
}

ini_close();