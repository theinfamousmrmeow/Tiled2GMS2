global.p_sys = part_system_create_layer(layer_create(0,"layer_particles"), false);

global.p_sys_above = part_system_create_layer(layer_create(-9998,"layer_particles_above"), false);

//Fire Particle
global.p_flames = part_type_create();
part_type_sprite(global.p_flames , spr_flames, 1, 0, 0);
part_type_size(global.p_flames, 1, 1, 0, 0);
part_type_scale(global.p_flames, 1, 1.25);
//part_type_colour1(global.p_flames, c_white);
//part_type_alpha2(global.p_flames, 1, 0);
part_type_speed(global.p_flames, 0.25, 1, 0, 0);
part_type_direction(global.p_flames, 0, 360, 0, 0);
//part_type_gravity(global.p_flames, 0.20, 270);
//part_type_orientation(global.p_flames, 0, 0, 0, 0, 1);
//part_type_blend(global.p_flames, 1);
part_type_life(global.p_flames, 10, 20);
//AXE SWISH
global.p_axe = part_type_create();
part_type_sprite(global.p_axe , spr_flames, 1, 0, 0);
part_type_size(global.p_axe, 1, 0.1, -0.05, 0.01);
//part_type_colour1(global.p_flames, c_white);
//part_type_alpha2(global.p_flames, 1, 0);
//part_type_gravity(global.p_flames, 0.20, 270);
part_type_orientation(global.p_axe, 0, 0, 0, 0, 1);
part_type_color1(global.p_axe,c_red);
part_type_blend(global.p_axe, 1);
part_type_life(global.p_axe, 15, 15);

global.p_axe_blue = part_type_create();
part_type_sprite(global.p_axe_blue , spr_flames, 1, 0, 0);
part_type_size(global.p_axe_blue, 1, 0.1, -0.05, 0.01);
//part_type_colour1(global.p_flames, c_white);
//part_type_alpha2(global.p_flames, 1, 0);
//part_type_gravity(global.p_flames, 0.20, 270);
part_type_orientation(global.p_axe_blue, 0, 0, 0, 0, 1);
part_type_color1(global.p_axe_blue,c_aqua);
part_type_blend(global.p_axe_blue, bm_one);
part_type_life(global.p_axe_blue, 15, 15);


global.p_smoke = part_type_create();

part_type_sprite(global.p_smoke , spr_smoke_new, 0, 1, 0);
part_type_size(global.p_smoke, 1, 2, 0, 0);
part_type_scale(global.p_smoke, 1, 1);

//part_type_colour1(global.p_smoke, c_white);
part_type_alpha2(global.p_smoke, 1, 0);
part_type_speed(global.p_smoke, 0.25, 0.5, 0, 0);
part_type_direction(global.p_smoke, 90, 90, 0, 4);
part_type_gravity(global.p_smoke, 0.1, 90);
//part_type_orientation(global.p_smoke, 0, 0, 0, 0, 1);
//part_type_blend(global.p_smoke, 1);
part_type_life(global.p_smoke, 10, 20);

part_type_death(global.p_flames, 1, global.p_smoke);

global.p_wool = part_type_create();
part_type_sprite(global.p_wool , spr_wooly_part, 0, 0, 1);
part_type_orientation(global.p_wool, 0, 10, 0, 10, 1);
part_type_size(global.p_wool, 0.25, 1, -0.01, 0);
part_type_scale(global.p_wool, 1, 1);
part_type_alpha2(global.p_wool, 1, 1);
part_type_speed(global.p_wool, 1, 2, -0.05, 0);
part_type_direction(global.p_wool, 0, 180, 0, 10);
part_type_gravity(global.p_wool, 0.02, 270);
part_type_life(global.p_wool, 30, 60);


global.p_feather = part_type_create();
part_type_sprite(global.p_feather , spr_manticore_feather_small, 0, 0, 1);
part_type_orientation(global.p_feather, 0, 10, 0, 10, 1);
part_type_size(global.p_feather, 1, 1, 0, 0);
part_type_scale(global.p_feather, 1, 1);
part_type_alpha2(global.p_feather, 1, 0);
part_type_speed(global.p_feather, 0.25, 3, 0, 0);
part_type_direction(global.p_feather, 90-10, 90+10, 0, 20);
part_type_gravity(global.p_feather, 0.05, 270);
part_type_life(global.p_feather, 80, 160);

global.p_trailfeather = part_type_create();
part_type_sprite(global.p_trailfeather , spr_manticore_feather_small, 0, 0, 1);
part_type_orientation(global.p_trailfeather, 90, 10, 0, 5, 1);
part_type_size(global.p_trailfeather, 1, 1, 0, 0);
part_type_scale(global.p_trailfeather, 1, 1);
//part_type_alpha2(global.p_trailfeather, 1, 0);
part_type_speed(global.p_trailfeather, 1, 2, 0, 0);
part_type_direction(global.p_trailfeather, 320, 359, 0, 10);
//part_type_gravity(global.p_trailfeather, 0.05, 270);
part_type_life(global.p_trailfeather, 120, 160);

global.p_ectoplasm = part_type_create();
part_type_sprite(global.p_ectoplasm , spr_willowisp_part, 0, 0, 1);
part_type_blend(global.p_ectoplasm, bm_add);
part_type_orientation(global.p_ectoplasm, 0, 359, 0, 90, 1);
part_type_size(global.p_ectoplasm, 0.25, 1, 0, 0.25);
part_type_scale(global.p_ectoplasm, 1, 1);
part_type_alpha2(global.p_ectoplasm, 1, 0);
part_type_speed(global.p_ectoplasm, 0.2, 0.6, 0, 0);
part_type_direction(global.p_ectoplasm, 90, 270, 0, 30);
//part_type_gravity(global.p_ectoplasm, 0.05, 270);
part_type_life(global.p_ectoplasm, 10, 20);

global.p_runes = part_type_create();
part_type_sprite(global.p_runes , spr_runes, 0, 0, 1);

//part_type_orientation(global.p_runes, 0, 0, 0, 10, 1);
part_type_color2(global.p_runes,c_white,c_yellow);
//part_type_size(global.p_runes, 1, 1.25, 0.05, 0.1);
//part_type_scale(global.p_runes, 1, 1);
part_type_alpha3(global.p_runes, 0.1, 0.75,0);
part_type_speed(global.p_runes, 0.2, 0.5, 0, 0);
part_type_direction(global.p_runes, 0, 359, 0, 10);
part_type_gravity(global.p_runes, 0.01, 90);
part_type_life(global.p_runes, 60, 80);
//global.p_runes_red = part_typ

global.p_dust = part_type_create();
part_type_sprite(global.p_dust , spr_fx_dust, 1, 0, 0);
part_type_gravity(global.p_dust, 0.02, 90);
part_type_size(global.p_dust, 1, 2, 0, 0);
part_type_scale(global.p_dust, 1, 1);
part_type_size(global.p_dust, 0.25, 1, -0.01, 0);
//part_type_colour1(global.p_smoke, c_white);
part_type_alpha2(global.p_dust, 1, 0);
part_type_speed(global.p_dust, 0.1, 0.25, 0, 0);
part_type_direction(global.p_dust, 80, 100, 1, 1);
part_type_life(global.p_dust, 10, 25);


global.p_river_ripple = part_type_create();
//part_type_sprite(global.p_river_ripple , spr_stream_ripple, 1, 0, 0);
part_type_sprite(global.p_river_ripple,spr_stream_ripple,1,1,0);
//part_type_size(global.p_river_ripple, 1, 2, 0, 0);
//part_type_scale(global.p_river_ripple, 1, 1);
//part_type_size(global.p_river_ripple, 0.25, 1, -0.01, 0);
//part_type_colour1(global.p_smoke, c_white);
part_type_alpha2(global.p_river_ripple, 1, 0.5);
part_type_speed(global.p_river_ripple, 0.5, 0.75, 0, 0);
part_type_direction(global.p_river_ripple, 265, 270, 0, 0);
part_type_life(global.p_river_ripple, 20, 45);