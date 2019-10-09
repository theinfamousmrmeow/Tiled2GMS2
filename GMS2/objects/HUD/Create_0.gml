/// @description Insert description here
// You can write your code in this editor
initSound();
jitter=0;
timerStarted = false;
x_offset = SIDE_OFFSET;
//surface_to_camera();
flocks[1]=3;
flocks[2]=3;
alarm[2]=2;

if (!instance_exists(River)){
	instance_create_depth(x,y,0,River);	
}

global.timer = 60;
//alarm[0]=TICKS_TO_SECONDS;

with (Sheep){
	instance_destroy();	
}
var player_sheep=6;
var pc_sheep = 6;

if (global.difficulty>=2){
	player_sheep-=1;
	pc_sheep+=1;
}

var no_sheep = player_sheep;
var rh = room_height;
var increment = (rh - 64)/(no_sheep-1);
xx = x_offset;
for (i=0;i<no_sheep;i++){
	ii=instance_create_depth(xx,32+i*(increment),depth,Sheep);
}
xx = room_width - x_offset;
no_sheep = pc_sheep;
increment = (rh - 64)/(no_sheep-1);
for (i=0;i<no_sheep;i++){
	ii=instance_create_depth(xx,32+i*(increment),depth,Sheep);
}

if (global.game_state = gameState.suddenDeath){
	bgmStart(bgmSuddenDeath);	
	i=instance_create_depth(x,y,-9999,TextFlash);
	i.text = "SUDDEN DEATH";
	with (Sheep){
		instance_destroy();	
	}
}


else {

	i=instance_create_depth(x-200,room_height/2,-9999,RoundStart);
	bgmStart(bgmMain);
}

buffer=SIDE_OFFSET;

//Player Team
char = ds_list_find_value(global.combatants[1],0);
i=instance_create_depth(0-buffer,room_height/2,0,char);
i.dest_x = 0+buffer;
ii = instance_create_depth(x,y,-9999,healthBar)
ii.target = i;

//WEAPONS FOR PLAYER 1
destroyGear(i,slot.primaryHand);
destroyGear(i,slot.offHand);

//
ii=instance_create_depth(i.x,i.y,0,global.gear[1,slot.primaryHand]);
equipItem(i,ii,slot.primaryHand);
ii=instance_create_depth(i.x,i.y,0,global.gear[1,slot.offHand]);
equipItem(i,ii,slot.offHand);

/*
char = ds_list_find_value(global.combatants[2],0);
i=instance_create_depth(room_width+buffer,room_height/2,0,char);
i.dest_x = room_width-buffer;

if (ds_list_size(global.combatants[2])>1){
	char = ds_list_find_value(global.combatants[2],1);
	i=instance_create_depth(room_width+buffer,room_height/4,0,char);
	i.dest_x = room_width-buffer-24;
}
*/

for (i=0;i<ds_list_size(global.combatants[2]);i++){
	char = ds_list_find_value(global.combatants[2],i);
	ii=instance_create_depth(room_width+buffer+(buffer*i/2),room_height/2,0,char);
	ii.dest_x = room_width-buffer-(24*(i));
	
	if (i==0){
		iii = instance_create_depth(x,y,-9999,healthBar)
		iii.target = ii;
		iii.xscale=-1;
	}
}
