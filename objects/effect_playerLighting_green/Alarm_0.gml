//Get lighting positions from players
	point_lt = point_direction(obj_Player.x,obj_Player.y,x-16,y-16)
	point_rt = point_direction(obj_Player.x,obj_Player.y,x+16,y-16)
	point_ld = point_direction(obj_Player.x,obj_Player.y,x-16,y+16)
	point_rd = point_direction(obj_Player.x,obj_Player.y,x+16,y+16)

lt_dirx = lengthdir_x(draw_distance,point_lt);
lt_diry = lengthdir_y(draw_distance,point_lt);
rt_dirx = lengthdir_x(draw_distance,point_rt);
rt_diry = lengthdir_y(draw_distance,point_rt);
ld_dirx = lengthdir_x(draw_distance,point_ld);
ld_diry = lengthdir_y(draw_distance,point_ld);
rd_dirx = lengthdir_x(draw_distance,point_rd);
rd_diry = lengthdir_y(draw_distance,point_rd);


lt_dirxa = lengthdir_x(draw_distancea,point_lt);
lt_dirya = lengthdir_y(draw_distancea,point_lt);
rt_dirxa = lengthdir_x(draw_distancea,point_rt);
rt_dirya = lengthdir_y(draw_distancea,point_rt);
ld_dirxa = lengthdir_x(draw_distancea,point_ld);
ld_dirya = lengthdir_y(draw_distancea,point_ld);
rd_dirxa = lengthdir_x(draw_distancea,point_rd);
rd_dirya = lengthdir_y(draw_distancea,point_rd);

alarm[0] = global.frametime;