/// @description Insert description here
// You can write your code in this editor
image_angle=direction;
if (direction>90 && direction<270){
	image_yscale = -abs(image_yscale);}
	else {image_yscale=abs(image_yscale);}
if (image_alpha<1){
	image_alpha+=0.05;	
}
speed=3;

angle=image_angle;