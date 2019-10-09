/// @description Insert description here
// You can write your code in this editor
image_alpha+=0.01;
if (image_alpha>1){
	
	switch(getGameMode()){
		case gameMode.versus:
			room_goto(titleScreen);
		break;
		case gameMode.arcade:
			room_goto(titleScreen);
		break;
		
		default:
			room_goto(titleScreen);
		break;
	}
		
}