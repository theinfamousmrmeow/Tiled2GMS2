/// @description Insert description here
// You can write your code in this editor

if (action==actions.stand){
image_index=1;
action = actions.held;
}
else {
	i=instance_create_depth(x,y,-9999,FX_fadein);
	global.players=1;
	setGameMode(doorGameMode);
	room_goto(doorRoom);
}