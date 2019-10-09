/// @description Insert description here
// You can write your code in this editor
dir = point_direction(x,y,next.x,next.y)+random(2)-1;
visible = next.visible;
// var am = sprite_width;
var am = 8;
image_angle=dir;
x=next.x+lengthdir_x(am,dir+180);
y=next.y+lengthdir_y(am,dir+180);
