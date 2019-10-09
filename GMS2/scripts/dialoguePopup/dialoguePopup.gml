		i=instance_create_depth(x,y-32,-9999,TextBox);
		
		with (TextBox){
			if (owner == argument0) {instance_destroy();}	
		}
		
		i.owner = argument0;
		i.targetText = argument1;