/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();

set_font_main();
if !(selected) draw_set_color(c_white);
else draw_set_color(c_lime);
draw_set_halign(fa_center);
draw_text(x,y+16,name);