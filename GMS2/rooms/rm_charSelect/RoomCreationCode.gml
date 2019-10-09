initParticles();
loadUnlocks();
surface_to_camera();
xx=room_width*1/2+24;
yy=room_height*1/10;
col_width = 64;
row_height = 40;
count=1;
col_no = 5;
row_no = 2;
players=global.players;

for (col=0;col<col_no;col++){
	for (row=0;row<row_no;row++){
		i=instance_create_depth(xx+col*col_width - ((col_no * col_width) /2),yy+row*row_height,0,CharacterSelectIcon);
		
		switch (count){
			case 1:
				i.character = Ragnar;
			break;
			case 2:
				i.character = Lothgar;
			break;
			case 3:
				i.character = Troll;
			break;
			case 4:
				i.character = Goblin;
			break;
			case 5:
				i.character = DeathKnight;
			break;
			case 6:
				i.character = Valkyrie;
			break;
			case 7:
				i.character = Wizard;
			break;
			case 8:
				i.character = Reaper;
			break;
			case 9:
				i.character = Slime;
			case 10:
				i.character = Shade;
			break;
			
			default:
				i.character = Ghost;
			break;
		}
		
		with (i){
			unlocked = characterIsUnlocked(character);
		}
		
		if (count>3){
			//i.unlocked=false;
		}
		count++;
	}
}

yy = room_height *2/3;

xx = room_width * 1/(1+players);

i = instance_create_depth(room_width*1/3,yy,-9999,SelectionToken);
i.player = 1;

i=instance_create_depth(xx,yy,-9998,CharacterSelectDisplay);
i.player = 1;

if (players==2){
	xx = room_width * 2/3;
	i = instance_create_depth(xx,yy,-9999,SelectionToken);
	i.player = 2;
	i=instance_create_depth(xx,yy,-9998,CharacterSelectDisplay);
	i.player = 2;
}
