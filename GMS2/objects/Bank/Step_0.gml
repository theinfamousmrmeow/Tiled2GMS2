/// @description Insert description here
// You can write your code in this editor

if (inShop()){
	action = actions.enter;	
}

if (currentWool<getWool()){
	currentWool++;
	image_blend=c_yellow;
	action = actions.enter;
}
else if (currentWool>getWool()){
	currentWool-=2;
	if (currentWool<getWool()){currentWool = getWool();}
	image_blend=c_red;
	action = actions.enter;
}

else {image_blend=c_white;}

if (action==actions.enter){
	if (amt>0) then {
		amt-=incrementer;
		incrementer*=1.1;
	}
	else {
		amt=0;
		incrementer=1;
		alarm[1]=200;	
		action = actions.stand;
	}
}
else if (action==actions.leave){
	if (amt<100) then {
		incrementer*=1.1;
		amt+=incrementer;
	}
	else {incrementer=1; amt=100;}
}