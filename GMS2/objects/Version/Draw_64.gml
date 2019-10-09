/// @description Insert description here
// You can write your code in this editor
xx=8;
yy=8;

draw_set_color(c_gray);
draw_text(xx+1,yy+1,"V "+string(VERSION));
draw_set_color(c_white);
//draw_set_halign(fa_right);
set_font_fancy();
draw_text(xx,yy,"V "+string(VERSION));
draw_text_ext(xx,yy+16,str,16,320);

//draw_set_halign(fa_left);