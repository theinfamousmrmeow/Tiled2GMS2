
if (charge>0 && charge<maxCharge && action == actions.held){
	draw_set_color(c_yellow)
	draw_circle(x,y,6 + (maxCharge-charge)/16,1);
	
}

draw_sprite_ext(sprite_index,image_index,x,y+10,xscale*0.5,image_yscale*0.5,angle,c_black,image_alpha/2);
draw_sprite_ext(sprite_index,image_index,x,y-z,xscale,image_yscale,angle,image_blend,image_alpha);



//draw_text(x,y+16,string(damage));
//draw_text(x,y+24,string(name));