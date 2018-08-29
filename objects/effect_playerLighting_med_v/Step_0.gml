if global.lighting_mode = 1
{
	//Light directions from player to wall
	point_lt = point_direction(obj_Player.x,obj_Player.y,x-16,y-160)
	point_rt = point_direction(obj_Player.x,obj_Player.y,x+16,y-160)
	point_ld = point_direction(obj_Player.x,obj_Player.y,x-16,y+160)
	point_rd = point_direction(obj_Player.x,obj_Player.y,x+16,y+160)
}

if place_meeting(x,y,obj_locked_door_w1)
{
	depth = -997;	
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

