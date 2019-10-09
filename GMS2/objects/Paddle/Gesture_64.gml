if (onOverworld() && !instance_exists(Button) && !isAI){
	
	path_end();
	
	dest_x=floor(mouse_x/16)*16+8
	dest_y=floor(mouse_y/16)*16+8
    {
    var path = path_add();
    if mp_grid_path(global.terrain_grid, path, x, y, dest_x, dest_y, 1)
       {
       //path_start(path, 0, 3, 0);
       path_start(path, 1, path_action_stop, 1);
       }
	else {
		i=instance_create_depth(x,y-32,-9999,TextBox);
		i.owner = id;
		i.targetText = choose(
		"I can't.",
		"Can't go there!",
		"Not there?");

		spawnParticleAbove(dest_x,dest_y,global.p_wool,10)	
	}
	    }




}