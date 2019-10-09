/// @description Insert description here
// You can write your code in this editor
var cam = view_get_camera(0);
var w = camera_get_view_width(cam);
var h = camera_get_view_height(cam);
x = camera_get_view_x(cam) + xpos * w;
y = camera_get_view_y(cam) + ypos * h;

draw_self();

if (text!=""){
	set_font_main();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(x,y,text);
	draw_set_halign(fa_left);
}