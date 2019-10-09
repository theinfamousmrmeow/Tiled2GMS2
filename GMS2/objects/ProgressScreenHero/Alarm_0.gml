/// @description Add characters, begin battle
// You can write your code in this editor
if (!keyboard_check(vk_space)){
	clearCombatants();
	addCombatant(1,character);
	for (i=0;i<array_length_1d(enemy.characters);i++)
	{
		addCombatant(2,enemy.characters[i]);
	}
	//if (enemy.doubles){addCombatant(2,enemy.character);}
	selectLevel(choose(rm_battle_bridge,rm_battle));
	startMatch();
	action = actions.stand;
	room_goto(selectedLevel());
}
else {
	global.missionResult = missionResults.playerVictory;
	room_restart();
}