/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

itemType = heldItemType.shield;

var grid = global.grid_shields;

name = object_get_name(object_index);

if ds_grid_value_exists(grid, 0, 0, 1, ds_grid_height(grid)-1, name)
{
    var ypos = ds_grid_value_y(grid, 0, 0, 1, ds_grid_height(grid)-1, name);
	soak = ds_grid_get(grid,shieldColumns.soak,ypos);
	weight = ds_grid_get(grid,shieldColumns.weight,ypos);
}

