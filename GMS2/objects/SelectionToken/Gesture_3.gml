/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Move Y axis
// You can write your code in this editor
selection = -1;
boredom=300;
//if (gameIsMobile()){
	touchX = event_data[?"posX"];
	touchY = event_data[?"posY"];
	//Player 1
	//if (action!=actions.hit){
		x = touchX;
		y = touchY;
	//}
//}
var dist = random(sprite_width);
var dir = random(360);
var xx = random(sprite_width*2)-sprite_width;
var yy = random(sprite_height*2)-sprite_height;
xx = lengthdir_x(dist,dir);
yy = lengthdir_y(dist,dir);

		if (player==1) spawnParticleAbove(x+xx,y+yy,global.p_axe,1);
		else spawnParticleAbove(x+xx,y+yy,global.p_axe_blue,1);


