if phase = 1 //if the player has dropped from the floating animation
{
	if unlock = 1
	{
		global.dash = true;		
		unlock_name = "dash";
		unlock_name_show = "dash";
	}
				
	if unlock = 2
	{
		global.triple_jump = true;		
		unlock_name = "triple_jump";
		unlock_name_show = "triple jump";
	}

	if unlock = 3
	{		
		global.wall_jump = true;		
		unlock_name = "wall_jump";
		unlock_name_show = "wall jump";
	}

	if keyboard_check_pressed(ord("E")) && distance_to_object(obj_Player) < 800
	{
		global.special = unlock_name;
	}	
}