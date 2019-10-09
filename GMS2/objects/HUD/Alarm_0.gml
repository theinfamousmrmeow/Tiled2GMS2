/// @description Insert description here
// You can write your code in this editor
if (global.game_state == gameState.playing){
	if (global.timer<=0){
		//End Game

		roundEnd();

	}
	else {
		global.timer--;
	}

	alarm[0]=TICKS_TO_SECONDS;
}