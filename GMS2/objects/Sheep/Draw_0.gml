/// @description Insert description here
// You can write your code in this editor
//draw_self_z();

xx=x;
yy=y;
if (jitter>0){xx+=random(jitter*2)-jitter; yy+=random(jitter*2)-jitter;}

image_angle = 0 + jitter * image_xscale;

draw_sprite_ext(spr_player_shadow,0,x,y-4,0.8,0.8,0,c_white,0.5);
draw_sprite_ext(bodySprite,0,xx,yy-z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_sheep_legs_walk,image_index,xx,yy-z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_sheep_head_walk,0,xx,yy-z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);