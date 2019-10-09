/// @description Insert description here
// You can write your code in this editor
if (target>0){
	if (instance_exists(target)){
		hp=target.hp;
		hpMax=target.hpMax;
		if (target.x)<room_width/2{xscale=1;}
		else {xscale=-1;}
	}
	else {target=-1;}
}
if (lastHp>hp){lastHp-=0.5;}
else {lastHp=hp;}