/// @description Insert description here
// You can write your code in this editor
if (visible && image_alpha==1){
	global.game_state = gameState.playing;
	global.game_mode = gameMode.arcade;
	global.players = 1;
	room_goto(rm_charSelect);
}