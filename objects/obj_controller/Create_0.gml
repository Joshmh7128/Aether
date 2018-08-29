draw_texture_flush();
depth = 100000
global.grid = mp_grid_create(0,0,room_width/16,room_height/16,16,16);
mp_grid_add_instances(global.grid,par_all_wall,false);