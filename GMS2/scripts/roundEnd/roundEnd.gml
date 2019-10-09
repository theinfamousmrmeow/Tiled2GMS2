
alarm[1]=TICKS_TO_SECONDS * CELEBRATE_SECONDS;
//TODO:  Determine winner

if (global.game_state==gameState.suddenDeath){
	if (getPlayerOne().action == actions.KO){
		winner = 2;//P2 WINS!
	}
	else winner=1;
}

else {
	if (HUD.flocks[1]==HUD.flocks[2]){winner=3;}//TIE
	else if HUD.flocks[1]<HUD.flocks[2]{winner=2; }//P2 WIN
	else {winner=1 };
}

if (global.game_state == gameState.suddenDeath){
	global.game_state = gameState.suddenDeathOver;	
}

else {global.game_state=gameState.roundOver;}

global.round_outcome[global.rounds-1]=winner;
i=instance_create_depth(x,y,-9999,TextFlash)
switch (global.round_outcome[global.rounds-1]) {
		case 1:
			i.text = "Red Wins!";
			i.col=c_red;
			sfx2DPlay(sfxMatchWin)
		break;
		case 2:
			sfx2DPlay(sfxMatchLoss)
			i.text = "Blue Wins!";
			i.col=c_aqua;
		break;
		case 3:
			sfx2DPlay(sfxMatchTie)
			i.text = "Tied!";
			i.col=c_yellow;
		break;
}

//TODO:  Celebrate winner
with Sheep {
	if (player==global.round_outcome[global.rounds-1]) action = actions.celebrate;	
}

with Paddle {
	if (player==global.round_outcome[global.rounds-1]) action = actions.celebrate;	
}