/// @description Insert description here
// You can write your code in this editor

//

initGear();

status = statuses.normal;

handX[slot.primaryHand]=0;
handX[slot.offHand]=0;
handY[slot.primaryHand]=0;
handY[slot.offHand]=0;

thought = thoughts.defense;
favoriteThought = thoughts.defense;
alarm[9]=1;

hpMax=100;
hp=hpMax;
//Base Stats
strength = 4;
agility = 6;
//Calculated Stats

gearWeight = 0;

shieldx=0;
shieldy=0;

friction=0.1;
hasAxe = true;
axesHeld = 1;
axesMax = 1;
hasShield = true;
isAI = false;
if (global.game_state==gameState.suddenDeath){
	axesHeld = 2;
	axesMax = 2;
	hasShield = false;
}


height=24;
jitter=0;
alarm[11]=2;

init_zphysics();
accel = 1;
moveSpeed=8;
zspeed=1.25;
shield_jitter = 0;

if (x<room_width/2) {
	player = 1;	
	global.player[1]=id;
}
else {
	global.player[2]=id;
	player=2;
	if (global.players<2) {
		isAI=true;
	accel = 1;
	moveSpeed=2;
	}
}

i=instance_create_depth(x,y,depth,getDefaultWeapon(object_index));
i.player = player;
i.owner=id;
equipItem(id,i,slot.primaryHand);

if (onOverworld()){
	equipItem(id,i,slot.belt);	
}

i=instance_create_depth(x,y,depth,getDefaultShield(object_index));
i.player = player;
i.owner=id;
equipItem(id,i,slot.offHand);

if (onOverworld()){
	equipItem(id,i,slot.back);	
}



lastSpeed=0;

dest_x = x;
dest_y = y;

alarm[10]=8;

if (x<room_width/2)
{
	xscale=1;		
}
else {
	xscale=-1;	
}
mask_index = mask_human;
action = actions.walkon;

//y=room_height/2;
var grid = global.grid_characters;
name = object_get_name(object_index);
if ds_grid_value_exists(grid, 0, 0, 1, ds_grid_height(global.grid_characters)-1, name)
{
    var ypos = ds_grid_value_y(grid, 0, 0, 1, ds_grid_height(global.grid_characters)-1, name);
	hpMax = real(ds_grid_get(global.grid_characters,characterColumns.vitality,ypos));
	hp=hpMax;
	strength = real(ds_grid_get(global.grid_characters,characterColumns.strength,ypos));
	agility = real(ds_grid_get(global.grid_characters,3,ypos));
	
	//show_message("YPOS: "+string(ypos)+", AGILITY: "+string(agility)+", STR:"+string(strength)+", VIT:"+string(hpMax));
}


if (onOverworld()){
	isAI = true;	
}