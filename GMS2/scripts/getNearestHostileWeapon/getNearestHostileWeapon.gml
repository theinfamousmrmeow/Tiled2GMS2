//arg1 = x
//arg2 = y
//arg3 = my team no
global.i = argument2;
global.x=argument0;
global.y=argument1;
global.j = 9999;
global.k=-1;
with (Ball){
	if (player!=global.i){
		
	var dir = point_direction(x,y,global.x,global.y);
	if (abs(angle_difference(direction,dir))<90){	
		var dist = distance_to_point(global.x,global.y);
		if (dist<global.j){
			global.j=dist;
			global.k=id;
		}
	}
	}
}

return global.k;