/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_speed=0.25;
maxSpeed=1.5;
alarm[1]=100;
prev=id;
var num=5;
for (i=0;i<5;i++){
	ii=instance_create_depth(x-i*10,y,depth,Segment);
	ii.next=prev;
	ii.image_index=i;
	if (i==num-1){ii.sprite_index=spr_dragon_tail;}
	prev=ii;
}
