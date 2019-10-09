ini_open(FILE_UNLOCKS);
ds_list_clear(global.unlocksList);

global.unlocks[unlocks.buildings,buildings.versus] = ini_read_real("buildings", "versus", 0);
global.unlocks[unlocks.buildings,buildings.shop] = ini_read_real("buildings", "shop", 0);
global.unlocks[unlocks.buildings,buildings.arcadeTowerOne] = ini_read_real("buildings", "tower1", 0);
global.unlocks[unlocks.buildings,buildings.arcadeTowerTwo] = ini_read_real("buildings", "tower2", 0);
global.unlocks[unlocks.buildings,buildings.arcadeTowerThree] = ini_read_real("buildings", "tower3", 0);
global.unlocks[unlocks.buildings,buildings.forest] = ini_read_real("buildings", "forest", 0);
global.unlocks[unlocks.buildings,buildings.longship] = ini_read_real("buildings", "ship", 0);
global.unlocks[unlocks.buildings,buildings.bridge] = ini_read_real("buildings", "bridge", 0);
//CHARACTERS
charStack = ds_stack_create();
ds_stack_push(charStack,"Ragnar","Lothgar","Valkyrie","Reaper","Wizard","Goblin",);
while (ds_stack_size(charStack)>0){
	var i = ds_stack_pop(charStack);
	if (ini_key_exists("characters",i)){ds_list_add(global.unlocksList,i);}
}
ds_stack_destroy(charStack);
//BUILDINGS

//if (ini_key_exists("characters","Ragnar")){ds_list_add(global.unlocksList,"Ragnar");}
global.unlocks[unlocks.characters,characters.Ragnar] = ini_read_real("characters", "Ragnar", 0);
global.unlocks[unlocks.characters,characters.Lothgar] = ini_read_real("characters", "Lothgar", 0);
global.unlocks[unlocks.characters,characters.DeathKnight] = ini_read_real("characters", "DeathKnight", 0);
global.unlocks[unlocks.characters,characters.Valkyrie] = ini_read_real("characters", "Valkyrie", 0);
global.unlocks[unlocks.characters,characters.Wizard] = ini_read_real("characters", "Wizard", 0);
global.unlocks[unlocks.characters,characters.Reaper] = ini_read_real("characters", "Reaper", 0);
global.unlocks[unlocks.characters,characters.Troll] = ini_read_real("characters", "Troll", 0);
global.unlocks[unlocks.characters,characters.Goblin] = ini_read_real("characters", "Goblin", 0);
//
//FOR EACH ROW in WeaponsCSV, read that row from Unlocks INI
//Add to global.unlocks[unlocks.weapons,i] as a String name of the weapon
//When a weapon gets unlocked, do ini_write_real("weapons",stringNameOfWeapon,1);
//When populating store of unlocked weapons, just iterate through the array and populate.
//global.unlocks[unlocks.weapons,i] = ini_read_real("weapons",weaponName,0);
//if (ini_read_string("weapons",weaponName,0)==1) then global.unlocks[unlocks.weapons,i]=weaponName;
ini_close();
loadUnlockedBuildings();
loadUnlockedWeapons();
//load_csv(working_directory + "\data_weapons.csv")