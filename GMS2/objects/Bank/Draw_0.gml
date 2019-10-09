/// @description Insert description here
// You can write your code in this editor
set_font_main();
draw_set_color(c_white);
draw_text(0,16,room_get_name(room))



cam = view_get_camera(0);
yy = camera_get_view_y(cam)+camera_get_view_height(cam)-16+((amt/100)*32);
xx = camera_get_view_x(cam);
draw_set_halign(fa_left);
draw_set_color(image_blend);
draw_text(xx+12,yy-16,string(currentWool));
draw_sprite(spr_icon_wool,0,xx,yy-16);
draw_set_color(c_white);
draw_text(xx+12,yy,string(getFleece()));
draw_sprite(spr_icon_fleece,0,xx,yy);

//
/*
var file_grid = global.grid_characters
var ww = ds_grid_width(file_grid);
var hh = ds_grid_height(file_grid);
var xx = 300;
var yy = 32;
for (var i = 0; i < ww; i++;)
    {
    for (var j = 0; j < hh; j++;)
        {
        draw_text(xx, yy, string(file_grid[# i, j]));
        yy += 32;
        }
    yy = 32;
    xx += 48;
    }
	
*/