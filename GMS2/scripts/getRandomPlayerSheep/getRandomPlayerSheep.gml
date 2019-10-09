//arg0 = player id to get
global.i = argument0;
global.j = ds_stack_create();
with (Sheep){
	if (player == global.i){
			ds_stack_push(global.j,id);
	}
}

var size = ds_stack_size(global.j);
var num = ceil(random(size));
var sheep = -1;
repeat(num){
	sheep = ds_stack_pop(global.j);
}
ds_stack_destroy(global.j);
global.j = 0;
return sheep;