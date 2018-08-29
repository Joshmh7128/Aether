///plan(target_x, target_y)

target_x = argument0;
target_y = argument1;

mp_grid_path(global.grid, path, x, y, target_x, target_y, true);
path_start(path, 9, path_action_stop, /* makes it absolute in the world*/ true)