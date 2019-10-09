/// @description Insert description here
// You can write your code in this editor
audio_stop_all();

x=room_width/2;
y=room_height;

var i=0;
backgrounds[i++]=bg_title_hills1;
backgrounds[i++]=bg_title_hills2;
backgroaunds[i++]=bg_title_hills3;
backgrounds[i++]=bg_title_clouds1;
backgrounds[i++]=bg_title_clouds2;
backgrounds[i++]=bg_title_sky2;
bgs=i;
for (i=0;i<bgs;i++){
backgrounds_x[i]=x;
backgrounds_y[i]=y-i*16;
}

for (i=0;i<bgs;i++){
backgrounds_hspeed[i]=0;
backgrounds_vspeed[i]=0;
}

backgrounds_hspeed[3]=0.15;
backgrounds_hspeed[4]=0.1;

for (i=0;i<bgs;i++){
backgrounds_parallax_x[i]=1;
backgrounds_parallax_y[i]=1+i*2;
}
backgrounds_y[3]*=0.7;
backgrounds_y[4]*=0.7;
backgrounds_parallax_y[3]/=3;
backgrounds_parallax_y[4]/=3;


backgrounds_parallax_x[5]=0;
backgrounds_parallax_y[5]=0;




