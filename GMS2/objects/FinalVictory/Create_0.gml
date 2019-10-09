/// @description Insert description here
// You can write your code in this editor


audio_stop_all();
bgmStart(bgmVictory);

i=instance_create_depth(x,y,-9999,FX_fadein);
x=room_width/2;
y=room_height/2;
image_speed=0.25;
if (countVictories(1)>countVictories(2)){
sprite_index=spr_victory_splash_red}
else {
sprite_index=spr_victory_splash_blue;}
alarm[0]=TICKS_TO_SECONDS*30;
depth =-9998;
repeat(100){
	i=instance_create_depth(random(room_width),random(room_height),0,Sheep);
	i.action = choose(actions.stand,actions.celebrate);
}