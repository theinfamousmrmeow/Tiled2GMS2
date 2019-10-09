/// @description Insert description here
// You can write your code in this editor
xx=x+random(jitter*2)-jitter;
yy=y+random(jitter*2)-jitter;

for (var i=0;i<array_length_1d(characters);i++){
	draw_sprite_ext(getCharacterIcon(characters[i]),image_index,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	xx+=32;
}

set_font_main();
if !(defeated) draw_set_color(c_white);
else draw_set_color(c_dkgray);
draw_set_halign(fa_center);
draw_text(x,y+16,name);