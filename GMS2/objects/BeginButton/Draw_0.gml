/// @description Insert description here
// You can write your code in this editor
var cam = view_get_camera(0);
var xx = camera_get_view_x(cam);
var yy = camera_get_view_y(cam)
draw_set_color(c_black);
draw_set_alpha(0.25);
draw_rectangle(xx,yy,xx+camera_get_view_width(cam),yy+camera_get_view_height(cam),0);
draw_set_alpha(1);
draw_self();
//event_inherited();