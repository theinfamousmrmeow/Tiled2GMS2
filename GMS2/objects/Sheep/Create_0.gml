/// @description Insert description here
// You can write your code in this editor
facing=1;
action = actions.stand;
alarm[10]=2;
jitter=0;
hp=50;
hpMax=hp;
friction=0.1;
alarm[0]=1;
init_zphysics();
spd=0.2;
bodySprite = spr_sheep_wool_white;
//Assign Player
if (x<room_width/2){
	player = 1;
}
else {
	player=2;
}

switch (player){
	case 1:
		bodySprite = spr_sheep_wool_red;
		break;
	case 2:
		bodySprite = spr_sheep_wool_blue;
		break;
}


alarm[11]=3;