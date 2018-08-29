if global.lighting_mode = 1
{
	//Light directions from player to wall
	point_lt = point_direction(obj_Player.x,obj_Player.y,x-16,y-256)
	point_rt = point_direction(obj_Player.x,obj_Player.y,x+16,y-256)
	point_ld = point_direction(obj_Player.x,obj_Player.y,x-16,y+256)
	point_rd = point_direction(obj_Player.x,obj_Player.y,x+16,y+256)
}
/*
if (point_distance(x,y,camera_main.x, camera_main.y) > check_range) // && global.dev_mode !=1
{
	visible = false
}
else
{
	visible = true	
}

if global.dev_mode = 1
{
visible = false
}

