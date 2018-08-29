if place_meeting(x,y,par_player) && keyboard_check_released(ord("E"))
{
	if place_meeting(x,y,par_player)
	{
		draw_map *= -1;	
	}
	
	if !alarm[0]
	{
		alarm[0] = 1;	
	}
}
