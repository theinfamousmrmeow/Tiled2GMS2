/// @description Insert description here
// You can write your code in this editor
if (action == actions.flee && z==0){
	if (choose(true,false)){spawnParticle(x+random(sprite_width)-sprite_width/2,y+2+random(4),global.p_dust,1);}
	else {
		spawnParticleAbove(x+random(sprite_width)-sprite_width/2,y+2+random(4),global.p_dust,1)
	}
}
alarm[11]=1;