/// @description Insert description here
// You can write your code in this editor
alarm[9]=300;
if (isAI){
	var enemy;
	if (player == 2) enemy=1 else enemy=2;
	target = getRandomPlayerSheep(enemy);
	if (target!=-1){
	i=instance_create_depth(x,y-sprite_height/2/2,-9998,Skullowisp);
	i.direction = point_direction(i.x,i.y,target.x,target.y);
	i.speed=3;
	i.player=player;
	}
}