/// @description Insert description here
// You can write your code in this editor
px=0
py=0;
ii = bgs-1;
draw_sprite_tiled(backgrounds[ii],0,px+backgrounds_x[ii],py+backgrounds_y[ii]);

for (ii=bgs-2;ii>=0;ii--){
	//Layer 3
	cam =  view_get_camera(0);
	px = camera_get_view_x(cam) / backgrounds_parallax_x[ii];
	py = camera_get_view_y(cam) / backgrounds_parallax_y[ii];
	switch (ii){
		case 0:
		case 1:
		case 2:
		draw_sprite(backgrounds[ii],0,px+backgrounds_x[ii],py+backgrounds_y[ii]);
		break;
		default:
		draw_sprite_tiled(backgrounds[ii],0,px+backgrounds_x[ii],py+backgrounds_y[ii]);
		break;
	}
	
}

