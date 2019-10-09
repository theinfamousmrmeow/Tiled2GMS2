if (z>0 || zspeed!=0){
    z+=zspeed;
    zspeed-=zgrav;
    if (zspeed<z_terminal_velocity){zspeed=z_terminal_velocity;}
    if(z<0){z=0; zspeed=0;}
}
