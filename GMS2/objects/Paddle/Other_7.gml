/// @description Insert description here
// You can write your code in this editor
if (action == actions.walk && speed==0){
	action = actions.stand;
	image_index=0;
}
else if (action == actions.throw ){
	action = actions.stand;
	image_index=0;
}