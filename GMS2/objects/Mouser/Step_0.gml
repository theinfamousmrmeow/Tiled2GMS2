/// @description Insert description here
// You can write your code in this editor
//x=mean(x,mouse_x,room_width/2);
if (amount < 1){ amount+=0.005;}

x=room_width/2;
y = (room_height/2)*amount;
//y=mean(y,mouse_y,room_height/2);
/// @description Insert description here
// You can write your code in this editor
cam = view_get_camera(0);
camera_set_view_pos(cam,x-camera_get_view_width(cam)/2,y-camera_get_view_height(cam)/2);