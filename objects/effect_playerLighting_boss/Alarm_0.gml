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

alarm[0] = 2;

if room = room_tut
{
	if place_meeting(x,y,obj_wall_tut)
	{
		tut = 1;	
	}
	
	if !place_meeting(x,y,obj_wall_tut) && tut = 1
	{
		instance_destroy();	
	}
}