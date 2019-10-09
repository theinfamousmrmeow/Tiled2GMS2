/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_set_halign(fa_center);
yy = y - 48;

if (action!=actions.flee){

draw_set_color(c_black);
		draw_text_transformed(x-1,yy,"Round "+string(global.rounds),2,2,image_angle);
draw_set_color(c_white);

draw_set_color(c_black);
		draw_text_transformed(x+1,yy+1,"Round "+string(global.rounds),2,2,image_angle);
draw_set_color(c_white);
		draw_text_transformed(x,yy,"Round "+string(global.rounds),2,2,image_angle);
}

	
draw_set_halign(fa_left);