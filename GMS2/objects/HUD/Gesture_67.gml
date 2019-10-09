/// @description Insert description here
// You can write your code in this editor
/// @description Move Y axis
// You can write your code in this editor

if (gameIsMobile()){
	touchX = event_data[?"posX"];
	touchY = event_data[?"posY"];
	//Player 1
	//if (action!=actions.hit){
		if (touchX<room_width/2){
			guy = getPlayerOne();
			//guy.y = touchY;
			guy.dest_y = touchY;
			}
			//Player 2
			else {
			guy = getPlayerTwo();
			//guy.y = touchY;
			guy.dest_y = touchY;
		
		}	
	//}
}

