point_lt = 0;
point_rt = 0;
point_ld = 0;
point_rd = 0;
draw_distance = 1200;
depth = -995;
if global.lighting_mode = 2
{
	alarm[0] = 2;
}
check_range = 1200;

lt_dirx = lengthdir_x(draw_distance,point_lt);
lt_diry = lengthdir_y(draw_distance,point_lt);
rt_dirx = lengthdir_x(draw_distance,point_rt);
rt_diry = lengthdir_y(draw_distance,point_rt);
ld_dirx = lengthdir_x(draw_distance,point_ld);
ld_diry = lengthdir_y(draw_distance,point_ld);
rd_dirx = lengthdir_x(draw_distance,point_rd);
rd_diry = lengthdir_y(draw_distance,point_rd);

tut = 0;
//1 for 60fps 2 for 30fps
global.frametime = 1;