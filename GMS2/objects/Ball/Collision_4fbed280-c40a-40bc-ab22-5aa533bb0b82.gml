/// @description Insert description here
// You can write your code in this editoru
if (action==actions.held){return;}
if (other.action = actions.celebrate) {return;}
if (global.game_state==gameState.matchOver){return;}

if (player!=other.player && other.hp>0 && other.z==0){
	

	other.jitter=3;
	 //0 x
	 //1 y
	 //2 type
	 //3 number
	
	if (other.hp==2) spawnParticleAbove(other.x,other.y,global.p_wool,10);
	//bounceAxe(other.x,other.y);
	//changeAxeOwnership(id);
	
	other.hp-=1;
	other.z=1;
	other.zspeed=1;
	other.z=1;
	other.alarm[3]=TICKS_TO_SECONDS*10;
	
	if (other.hp<=0){sfxTypePlay(sfxSheepBleat());}
	else {sfxTypePlay(sfxShear());}
	
	if (destroyOnHit){instance_destroy();}
}