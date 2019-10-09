/// @description Insert description here
// You can write your code in this editor
event_inherited();

set_font_fancy();
if (action == actions.stand || action == actions.walkon){
	draw_set_color(c_white);
	draw_text(room_width/2,y,text);
}