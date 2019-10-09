/// @description Insert description here
// You can write your code in this editor

if (action!=actions.flee && action!=actions.walkon && action!=actions.celebrate){
	direction=random(360);
	action = actions.walk;
	alarm[1]=50;
}