/// @description Shield jitter
// You can write your code in this editor
if (shield_jitter>0){shield_jitter--;}
if (jitter>0){jitter--;}



/// @description Insert description here
// You can write your code in this editor
if (speed<lastSpeed && z==0){
	if (choose(true,false)){spawnParticle(x+random(12)-6,y+sprite_height/2,global.p_dust,1);}
	else {
		spawnParticleAbove(x+random(12)-6,y+sprite_height/2,global.p_dust,1)
	}
}

lastSpeed=speed;

alarm[11]=2;