/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
visible=false;
//Create chain
damageType = damageTypes.blunt;
serveSound = sfxThrowHeavy;

head=id;
var num=5;
for (i=0;i<num;i++){
	ii=instance_create_depth(x-i*10,y,depth,Chain);
	ii.head=head;
	ii.image_speed=0;
	//ii.image_index=i%2;
	ii.size=5;
	head.tail=ii;
	ii.sprite_index=spr_chain;
	head=ii;
}
ii.tail = -1;
tail = ii;
pivot=0;
len=1;