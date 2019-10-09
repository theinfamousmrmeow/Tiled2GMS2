/// @description Insert description here
// You can write your code in this editor
alarm[11]=random(300)+400;
cam = view_get_camera(0);
w = camera_get_view_width(cam);
h = camera_get_view_height(cam);
dest_x=w/2+random(room_width-w);
dest_y=h/2+random(room_height-h);