/// @description Insert description here
// You can write your code in this editor

event_inherited();
age=0;
damage=25;
throwSpeed=3;
maxSpeed=5
angle=0;
weight=3;
xscale=1;
player = 0;
owner=-1;
serveSound = sfxAxeThrow1;
blunt=false;
damageType = damageTypes.sharp;
depth=-9999;
z=10;
image_speed=0;
image_index=0;
//Charging weapons!
charge = 0;
maxCharge = 0;
//
destroyOnHit=false;
bounceOnWalls=true;
catchable=true;


var grid = global.grid_weapons;
name = object_get_name(object_index);
if ds_grid_value_exists(grid, 0, 0, 1, ds_grid_height(global.grid_weapons)-1, name)
{
    var ypos = ds_grid_value_y(grid, 0, 0, 1, ds_grid_height(global.grid_weapons)-1, name);
	damage = ds_grid_get(global.grid_weapons,weaponColumns.damage,ypos);
	weight = ds_grid_get(global.grid_weapons,weaponColumns.weight,ypos);
}