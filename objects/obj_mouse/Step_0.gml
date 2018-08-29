if gamepad_is_connected(0)
{ 
gamepad_set_axis_deadzone(0, 0.15);
}


if global.gamepad_mode = 1
{	
	if object_exists(obj_gun)
	{
		x = obj_gun.x + lengthdir_x(radius,obj_gun.point_angle)
		y = obj_gun.y + lengthdir_y(radius,obj_gun.point_angle)
	}
}



if keyboard_check_released(ord("G")) && room != room_start
	{
		global.gamepad_mode = 1
	}
		
	
if keyboard_check_released(ord("H"))
	{
		global.gamepad_mode = 0
	}

if depth > -10000
{
	depth = -10000	
}