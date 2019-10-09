/// @description Insert description here
// You can write your code in this editor
var width = camera_get_view_width(cam);
var height = camera_get_view_height(cam);
var xx=mean(x,x,target.x);
var yy=mean(y,y,target.y);
x=xx;
y=yy;
xx=clamp(xx,0+width/2,room_width-width/2);
yy=clamp(yy,0+height/2,room_height-height/2);
camera_set_view_pos(cam,xx-width/2,yy-height/2)
