/// @description Insert description here
// You can write your code in this editor
enemy = instance_nearest(room_width*(2/3),y,ProgressScreenIcon);
event_inherited();

if (action==actions.walk){
	vspeed=-2;
	if (y<=dest_y){
		vspeed=0;
		y = dest_y;
		action = actions.stand;
		alarm[0]=TICKS_TO_SECONDS*4;
	}
}

if (match == final_match){
	text = "BOSS!";
	setMission(missions.boss);
	global.roundsInMatch=5;
}
else {
	text = "Match "+string(match);	
}