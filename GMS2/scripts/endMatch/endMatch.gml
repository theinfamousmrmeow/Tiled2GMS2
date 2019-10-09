

if (global.game_state!=gameState.suddenDeathOver && countVictories(1)<2 && countVictories(2)<2){
	//Enter Sudden Death	
	global.game_state=gameState.suddenDeath;
	room_restart();
}
else {
	global.rounds=1;
	if (getGameMode()==gameMode.arcade){
		
		if (countVictories(1)>countVictories(2)){
			global.missionResult = missionResults.playerVictory;
			room_goto(rm_arcadeProgress);
			}
		
		else {
			global.missionResult = missionResults.AIVictory;
			room_goto(rm_arcadeProgress);
			//room_goto(titleScreen);
		}
	}
	else room_goto(rm_victory);
}