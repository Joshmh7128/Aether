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

if !place_meeting(x,y,obj_wallB)
{
	instance_destroy();
}

