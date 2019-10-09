/// @description Insert description here
// You can write your code in this editor
if !(unlocked){
	name ="????";
	image_blend = c_dkgray;
}

else {
	name = getCharacterName(character);
	sprite_index = getCharacterIcon(character);
}

if (action == actions.stand){
		if (image_xscale>1){
		image_xscale-=0.05;
	}
}

if (action = actions.hit){
	if (image_xscale<1.25){
		image_xscale+=0.05;
		image_yscale = image_xscale;
	}
	else {
		action = actions.stand;	
	}
}



image_yscale = abs(image_xscale);