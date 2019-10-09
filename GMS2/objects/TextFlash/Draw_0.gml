/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
yy = y - 48;

 draw_set_color(c_white);
//set_font_main();
//draw_set_alpha(image_alpha);
if (action == actions.stand) {
	draw_set_color(c_black);
	draw_text_transformed(x+1,yy+1,string(text),2,2,image_angle);
	draw_set_color(c_black);
	draw_text_transformed(x-1,yy-1,string(text),2,2,image_angle);
	draw_set_color(c_white);
	draw_text_transformed(x,yy-1,string(text),2,2,image_angle);
}
if (action == actions.stand) draw_set_color(image_blend);
if (action == actions.flee) draw_set_color(c_black);
		draw_text_transformed_color(x,yy,string(text),2*image_alpha,2,image_angle,image_blend,image_blend,image_blend,image_blend,image_alpha);
		//draw_text_transformed(x,yy,string(text),2,2,image_angle);
draw_set_alpha(1);
	
draw_set_halign(fa_left);
set_font_fancy();