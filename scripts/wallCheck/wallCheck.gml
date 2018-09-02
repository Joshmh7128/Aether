if !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall_long_v,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall_long_h,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall_med_v,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall_med_h,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wallB,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,obj_wall_long_v,0,0)
{
	return true;	
}
else
{
	return false;	
}