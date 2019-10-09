global.i = argument0;
global.ii = 0;

with (Sheep){
		if (player == global.i){
			global.ii++;
		}
}

return global.ii;