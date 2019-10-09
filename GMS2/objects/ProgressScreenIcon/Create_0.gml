/// @description Insert description here
// You can write your code in this editor
jitter=0;
defeated = false;
defeated = false;
initFonts();
image_speed=0;
character = getRandomCharacter();
name = getCharacterName(character);
sprite_index = getCharacterIcon(character);
if (x>room_width/2) then image_xscale=-1;
else image_xscale=1;
alarm[0]=2;

doubles = false;

characters[0] = character;
