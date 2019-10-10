
/// @description Insert description here
// You can write your code in this editor
if (action!=actions.held && other.action!=actions.held){
	//move_bounce_all(0);
	var prevspeed = speed;
	motion_add(point_direction(x,y,other.x,other.y)+180,other.weight);
	speed = prevspeed;
	//direction+=random(40)-20;
	if (x<other.x){
		sfxTypePlay(sfxWeaponDeflects());
		spawnParticleAbove(mean(x,other.x),mean(y,other.y),global.p_spark,12);
	}
	if (other.destroyOnHit){
		with other instance_destroy();
	}
	if (destroyOnHit){
		instance_destroy();	
	}
}