/// @description Insert description here
// You can write your code in this editor

var xx=0;
var yy=0;

y=clamp(y,height/2,room_height-height/2);

draw_sprite_ext(spr_player_shadow,0,x,y,1,1,0,c_white,0.5);

if (shield_jitter>0){
	shieldx = random(shield_jitter)-shield_jitter;
	shieldy = random(shield_jitter*2)-shield_jitter;
}
if (jitter>0){
	xx = random(jitter)-jitter;
	yy = random(jitter*2)-jitter;
}


feetImage=image_index;
if (action == actions.throw) { bodyImage=image_index;} else if (action!=actions.celebrate) {bodyImage=0;}

draw_sprite_ext(spr_walk,feetImage,x+xx,y+yy-z,xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_body,bodyImage,x+xx,y+yy-z,xscale,image_yscale,image_angle,image_blend,image_alpha);

if (action!=actions.celebrate){
	if (action!=actions.catch && action!=actions.hit && hasShield){
		//draw_sprite_ext(psprite(spr_shield,spr_shield_blue),0,shieldx+x+(xscale*2),shieldy+y+2-z,xscale,image_yscale,image_angle,image_blend,image_alpha);
	}
	if (hasAxe && !(action == actions.throw && image_index>=2)){
		
		
		if (action==actions.throw){
			axe_x=-(xscale*11);
			axe_y=-4;
			var fac;
			axe_rot=90*xscale;
			//axe_rot=1*xscale	
		}
		else if (action==actions.catch){
			axe_x=(xscale*7);
			axe_y=-11;
			var fac;
			axe_rot=0;
			//axe_rot=1*xscale
		}
		else {
			axe_x=-(xscale*10);
			axe_y=-2;
			axe_rot=0;
		}
		//draw_sprite_ext(spr_axe,1,xx+x+axe_x,yy+y+axe_y-z,xscale,image_yscale,image_angle+axe_rot,image_blend,image_alpha);
		
		if (axesHeld==2) && (action == actions.stand || action == actions.walk){
			//draw_sprite_ext(spr_axe,1,xx+x+axe_x+(xscale*18),yy+y+axe_y-z,xscale,image_yscale,image_angle+axe_rot,image_blend,image_alpha);
		}
		
	}
}

handX[slot.primaryHand]=axe_x;
handY[slot.primaryHand]=axe_y;
//shieldx+x+(xscale*2),shieldy+y+2-z
handX[slot.offHand]=shieldx;
handY[slot.offHand]=shieldy+2;