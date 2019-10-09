/// @description Insert description here
// You can write your code in this editor

//for (player=1;player<3;player++){
//	if (getSheepCount(player)==0){
//		if (flocks[player]>0){
//			flocks[player]--;
//			i=instance_create_depth(getPlayerFromNumber(player).x,
//			getPlayerFromNumber(player).y,depth,Sheep);
//		}
//	 }
//}
if (global.game_state == gameState.playing){
	flocks[1]=getSheepCount(1);
	flocks[2]=getSheepCount(2);

	if (flocks[1]=0 || flocks[2]==0 || keyboard_check_pressed((vk_delete))){
		roundEnd();	
	}
}

if (jitter>0){
	cam=view_get_camera(0)
	camera_set_view_pos(cam,0+random(jitter),0+random(jitter));
}