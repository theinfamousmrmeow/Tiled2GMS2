/// @description Insert description here
// You can write your code in this editor

xx = 100//display_get_gui_width()*1/10;
if (xscale<0){
	xx = display_get_gui_width() * 6/10;	
}
yy = 100//display_get_gui_height()*(7/8);
var barWidth = 100;
var barHeight = 8;

if (lastHp>hp){hpDrain=lastHp-hp;}
else {hpDrain=0;}

//Drain Bar
if (hpDrain>0){
	draw_set_color(c_red);
	draw_sprite_stretched(spr_hp_bleed,0,xx+(barWidth*(hp/hpMax)),yy,((hp/hpMax)*hpDrain),barHeight);
	//draw_rectangle(xx+(barWidth*xscale*(hp/hpMax)),yy,xx+(barWidth*xscale*(hp/hpMax)+((hp/hpMax)*hpDrain)),yy-barHeight,0);
}
//Inner Bar
draw_set_color(c_yellow);
//draw_rectangle(xx,yy,xx+(barWidth*xscale*(hp/hpMax)),yy-barHeight,0);
draw_sprite_stretched(spr_hp_fill,0,xx,yy,(barWidth*(hp/hpMax)),barHeight);

//Outer bar
draw_set_color(c_white);
//draw_rectangle(xx,yy,xx+(barWidth*xscale),yy-barHeight,1);

draw_set_color(c_white);