initParticles();
loadUnlocks();
surface_to_camera();
xx=room_width*1/2+24;
yy=room_height*1/10;
col_width = 32;
row_height = 32;
count=1;
col_no = 8;
row_no = 2;
players=global.players;

		
		var grid = getAllWeaponsNotUnlocked();
		var height = ds_grid_height(grid);
		var ii = 0;
	while (!ds_stack_empty(grid))
	{
			
			weaponName = ds_grid_get(global.grid_weapons,weaponColumns.name,ii);
			
			col = (ii-1) mod col_no;
			row = floor((ii-1) / col_no);
			weaponObject = getObjectIndexFromString(ds_stack_pop(grid));
			if (weaponObject>0){
				i=instance_create_depth(xx+col*col_width - ((col_no * col_width) /2),yy+row*row_height,0,weaponObject);
				i.visible=true;
				with (i){
					fleeceCost=0;
					woolCost=100;
					//unlocked = weaponIsUnlocked(weaponName);
				}		
			}
			
			ii++;
		}
		
		
		ds_stack_destroy(grid);

		

count++;

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
