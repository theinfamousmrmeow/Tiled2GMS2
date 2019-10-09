/// @description Insert description here
// You can write your code in this editor
alarm[0]=TICKS_TO_SECONDS*0.1;
left = room_width/2 - 16;
right = room_width/2 +16;
xx=left+random(right-left);
yy=random(room_height-32);
spawnParticle(xx,yy,global.p_river_ripple,1);