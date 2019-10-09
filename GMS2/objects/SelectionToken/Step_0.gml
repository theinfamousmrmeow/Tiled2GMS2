/// @description Insert description here
// You can write your code in this editor

image_index = player-1;

switch (player){
	case 1:
	//image_blend = c_red;
	//text = "P1";
	break;
	case 2:
	//image_blend = c_aqua;
	//text = "P2";
	break;
}

if (selection != -1){
	boredom=300;
	if (image_alpha>0.5){
		image_alpha-=0.01;	
	}
}
else {
	boredom--;
	if (image_alpha<1){
		image_alpha+=0.01;	
	}
}