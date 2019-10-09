/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
room_persistent=true;

if (global.missionResult==missionResults.playerVictory){
	clearMissionState();
	addWool(100);
	match++;
	clearCombatants();
	enemy = instance_nearest(room_width*(2/3),y,ProgressScreenIcon);
	enemy.defeated=true;
	enemy.jitter=10;
	dest_y = y - increment;
	action = actions.celebrate;
	global.difficulty+=0.5;
	alarm[1]=TICKS_TO_SECONDS*1;
	if (match>final_match){
		room_persistent=false;
		room_goto(rm_victory);	
	}
}
else if (global.missionResult == missionResults.AIVictory){
	clearMissionState();
	room_persistent=false;
	room_goto(titleScreen);
}
