/// @description Insert description here
// You can write your code in this editor
if (disabled) return;
if (visible && image_alpha==1){
	global.game_state = gameState.playing;
	switch (getGameMode()){
		
		case gameMode.arcade:
			if (room == rm_weaponSelect){room_goto(rm_arcadeProgress)}
			else room_goto(rm_weaponSelect);
		break;
		case gameMode.versus:
		//global.character[player]=character;
			addCombatant(1,global.character[1]);
			addCombatant(2,global.character[2]);
			room_goto(rm_battle);
		break;
		default:
		//Freak out and rage quit
		
		break;
	}
}