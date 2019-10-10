/// @description Insert description here
// You can write your code in this editor
if (visible && image_alpha==1){
	sfx2DPlay(sfxBell1);
	global.game_state = gameState.overWorld;
	global.game_mode = gameMode.overworld;
	global.players = 2;
	room_goto(overworld);
}