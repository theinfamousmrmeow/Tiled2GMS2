//Input character name as object index

if (ds_list_find_index(global.unlocksList,getCharacterName(argument0))>=0){
	return true;
}
else {
	if (ds_list_find_index(global.unlocksList,argument0)>=0) return true;	
}
return false;

//
switch (argument0){
	case Ragnar:
		return global.unlocks[unlocks.characters,characters.Ragnar];
		break;
	case Lothgar:
		return global.unlocks[unlocks.characters,characters.Lothgar];
		break;
	case Reaper:
		return global.unlocks[unlocks.characters,characters.Reaper];
		break;
	case Valkyrie:
		return global.unlocks[unlocks.characters,characters.Valkyrie];
		break;
	case Wizard:
		return global.unlocks[unlocks.characters,characters.Wizard];
		break;
	case Goblin:
		return global.unlocks[unlocks.characters,characters.Goblin];
		break;
	case Troll:
		return global.unlocks[unlocks.characters,characters.Troll];
		break;
	case DeathKnight:
		return global.unlocks[unlocks.characters,characters.DeathKnight];
		break;
	default:
		return false;
}