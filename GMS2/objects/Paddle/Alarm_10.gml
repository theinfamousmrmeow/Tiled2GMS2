/// @description update dest_y
// You can write your code in this editor

if (isAI){
	if (!onOverworld()){
		switch(thought){
			case thoughts.defense:
			case thoughts.offense:
			var wep = getNearestHostileWeapon(x,y,player);
			if (wep>0){
			if (x>wep.x){
				var ly = wep.y+lengthdir_y(x-wep.x,wep.direction);
				if (ly<0){dest_y=abs(ly)}
				else if (ly>room_height){dest_y=room_height - (ly - room_height);}
				else {dest_y = wep.y+lengthdir_y(x-wep.x,wep.direction);}
			}
			else {
				if (abs(angle_difference(point_direction(wep.x,wep.y,x,y),wep.direction))<25) {
					dest_y = random(room_height);	
				}
			}
			}

			//If no hostile weps, go to middle
			else dest_y=room_height/2+random(64)-32;
			dest_y+=random(16)-8;
			break;
			//}
			case thoughts.chaos:
			dest_y = random(room_height-64)+32;
			break;
			
			default:
						//dest_y = random(room_height);	
			break;
			
			break;
			
		}
	}
	else {
		direction = random(8)*45;
		speed=1;
		friction=0;
	}
}
alarm[10]=32;