//Evaluate if we need to continue or not

global.rounds+=1;

if (global.rounds>global.roundsInMatch || countVictories(1)==ceil(global.roundsInMatch/2) || countVictories(2)==ceil(global.roundsInMatch/2)){
	endMatch();
}
else {
	global.game_state=gameState.playing;
	room_restart();
}