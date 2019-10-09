/// @description Insert description here
// You can write your code in this editor

xx = event_data[?"posX"];
yy = event_data[?"posY"];

if (xx<room_width/2){
	//P1
	with (getPlayerOne()){
		vikingThrowAxe();	
	}
}
else {
	//P2
	with (getPlayerTwo()){
		vikingThrowAxe();	
	}
}

flickVelX = event_data[?"diffX"];
flickVelY = event_data[?"diffY"];