/// @description Insert description here
// You can write your code in this editor
switch (action){
	case actions.walkon:	
		if (image_alpha<1){image_alpha+=0.1;}
		else {action = actions.stand; image_alpha=1;}
	break;
	case actions.flee:
		if (image_alpha>0){image_alpha-=0.1;}
		else {instance_destroy();}
	break;

}

if (owner>0){
	x = owner.x-width/2;
	y = owner.y - 16 - height;
}