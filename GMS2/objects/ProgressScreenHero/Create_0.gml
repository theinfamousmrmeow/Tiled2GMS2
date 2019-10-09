/// @description Insert description here
// You can write your code in this editor


event_inherited();
action = actions.walkon;
//action = actions.stand;


final_match = 8;

rh = room_height;
increment = (rh - 64)/(final_match-1);
match = 1;

dest_y = rh - 32;
y = dest_y;
x = room_width * 1/3;
name = "-1";
character = global.character[1];
characters=0;
characters[0]=character;
name = getCharacterName(character);
sprite_index = getCharacterIcon(character);

tempList = ds_list_create();

ds_list_add(tempList,Ragnar,Lothgar,Troll,DeathKnight,Goblin,Valkyrie,Wizard);
ds_list_shuffle(tempList);

ds_list_insert(tempList, 0, Reaper);

for (i=0;i<final_match;i++){

	ii=instance_create_depth(room_width*2/3,32+i*(increment),depth,ProgressScreenIcon);
	ii.character=ds_list_find_value(tempList,0);
	ii.characters[0]=ii.character;
	if (i==2 || i==3){
		ii.doubles=true;
		ii.characters[1]=getRandomCharacter();
	}
	if (i==1){
		ii.doubles=true;
		ii.characters[1]=getRandomCharacter();
		ii.characters[2]=getRandomCharacter();
	}
	ds_list_delete(tempList,0);
}
ds_list_destroy(tempList);
alarm[0]=TICKS_TO_SECONDS*5;