if global.change_position != 0
{
	if (y != obj_spc_chg_station.y - 160)
	{
		move_towards_point(obj_spc_chg_station.x,obj_spc_chg_station.y - 160,speed)
	}
	
	if (y <= obj_spc_chg_station.y - 159)
	{
		speed = 0
	}
}
else
{
	speed = 15
	move_towards_point(obj_spc_chg_station.x,obj_spc_chg_station.y,speed)
}

if place_meeting(x,y,obj_mouse) && mouse_check_button_pressed(mb_left)
{
	global.special = "none"
}