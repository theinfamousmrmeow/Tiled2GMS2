/// @description Insert description here
// You can write your code in this editor
if (action!=actions.flee && action!=actions.walkon && action!=actions.celebrate){
	action = actions.stand;
	alarm[0]=random(50)+50;
}