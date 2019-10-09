/// @description Insert description here
// You can write your code in this editor
set_font_fancy();

draw_set_halign(fa_center);

yy=10;

xx=room_width/2-32;

//draw_text(xx,yy,string(flocks[1]));

xx=room_width*1/2 +32

//draw_text(xx,yy,string(flocks[2]));

xx=room_width*1/2

yy = room_height - 16;
if (global.game_state != gameState.suddenDeath){
	
	if (global.timer<10){
		image_scale=2;
		draw_set_color(c_red);
		draw_text_ext_transformed(xx+1,yy+1,string(global.timer),1,300,image_scale,image_scale,0);
		if (global.timer%2==0){draw_set_color(c_white)} else {draw_set_color(c_yellow);}
		draw_text_ext_transformed(xx,yy,string(global.timer),1,300,image_scale,image_scale,0);
		
	}
	else {
	
	draw_text_ext_color(xx+1,yy+1,string(global.timer),1,300,c_red,c_red,c_red,c_red,1);
	draw_text_ext_color(xx,yy,string(global.timer),1,300,c_white,c_white,c_white,c_white,1);
	}

}
draw_set_halign(fa_left);

yy=0;
yy+=8;
//draw_text(xx,yy,string(global.rounds));

/*
xx-=17;
draw_sprite(spr_roundIcon,global.round_outcome[0],xx,yy);
xx+=17
draw_sprite(spr_roundIcon,global.round_outcome[1],xx,yy);
xx+=17
draw_sprite(spr_roundIcon,global.round_outcome[2],xx,yy);
*/
//yy+=16;
xx = room_width/2 - (global.roundsInMatch/2)*18;
for (i=0;i<global.roundsInMatch;i++){
	draw_sprite(spr_roundIcon,global.round_outcome[i],xx,yy);
	xx+=18;
}

p1 = getPlayerOne();
p2 = getPlayerTwo();


yy = room_height-16;

draw_set_color(c_white);

if (p1>0) {
	draw_set_color(c_red);
	draw_text(room_width*1/5+1,yy+1,p1.name);
	draw_set_color(c_white);
	draw_text(room_width*1/5,yy,p1.name);
}
if (p2>0) {
	
	draw_set_color(merge_colour(c_aqua,c_blue,0.5));
	draw_text(room_width*4/5+1,yy+1,p2.name);
		draw_set_color(c_white);
	draw_text(room_width*4/5,yy,p2.name);
}
