/// @description Insert description here
// You can write your code in this editor
i=instance_create_depth(x,y-32,-9999,TextBox);
i.owner = id;
i.targetText = choose("I used to be an Adventurer...","Should've paid the fine!","Somebody steal your sweet roll?");
alarm[0]=random(100)+400;