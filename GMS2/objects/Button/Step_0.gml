/// @description Insert description here
// You can write your code in this editor
if (action==ACTION_IDLE){
	image_blend=c_white;
	image_index=0;
	}
if (action==ACTION_FLAP){
	scale(baseScale*0.75);
}
else {
	scale(baseScale*1);
}

if (action == ACTION_ENTER){
	//image_blend=c_ltgray;
	image_index=1;
}

if (!goInvisible){
	visible=1;
	if (image_alpha<1){
		image_alpha+=0.05;	
	}
}
else {
	image_alpha=0;
	visible=0;
}
if (disabled){
	image_blend=c_gray;	
}