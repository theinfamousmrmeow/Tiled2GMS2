/// @description Insert description here
// You can write your code in this editor
action = head.action;
visible = head.visible;
depth = head.depth+1;
dir = point_direction(x,y,head.x,head.y)+random(2)-1;

if (action==actions.thrown){
	// var am = sprite_width;
	var am = size;
	image_angle=dir;
	x=head.x+lengthdir_x(am,dir+180);
	y=head.y+lengthdir_y(am,dir+180);
}

if (action==actions.held){
	//if (head > 0 && tail >0){
	image_angle=dir;
	x=mean(head.x,tail.x);
	y=mean(head.y,tail.y);
	//}
}