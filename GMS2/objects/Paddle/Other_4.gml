/// @description Insert description here
// You can write your code in this editor
if (global.game_mode==gameMode.overworld || room=overworld){
//terrain_grid;
 global.terrain_grid = mp_grid_create(0, 0, room_width div 16, room_height div 16, 16, 16);
 mp_grid_add_instances(global.terrain_grid, Collision, false);
 with (Door){
  mp_grid_clear_cell(global.terrain_grid,floor(x div 16), floor(y div 16));
  mp_grid_clear_cell(global.terrain_grid,floor(x div 16), floor((y-8) div 16));
 }
}