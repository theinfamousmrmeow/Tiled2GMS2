/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_alpha+=random(1)/10-(0.05);
image_alpha = clamp(image_alpha,0.5,1);
if (ceil(random(10))==10) then spawnParticle(x+random(sprite_width*2)-sprite_width,y-random(sprite_height),global.p_ectoplasm,1)