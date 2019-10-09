/// @description Insert description here
// You can write your code in this editor
global.game_state = gameState.playing;
global.game_mode = gameMode.overworld;
with (Camera){
	target = instance_nearest(x,y,Paddle);	
}
instance_destroy();