/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_purple);
draw_set_alpha(image_alpha/2);
if (!hasFocus){
width = string_width_ext(currentText,sep,maxwidth);
height = string_height_ext(currentText,sep,maxwidth);}
else {
	
width = camera_get_view_width(0);	
}

draw_roundrect(x-4,y-4,x+width+4,y+height+4,0);
draw_set_alpha(image_alpha);

draw_set_color(c_red)
draw_text_ext(x+1,y+1,currentText,sep,width);
draw_set_color(c_white);
draw_text_ext(x,y,currentText,sep,width);
draw_set_alpha(1);