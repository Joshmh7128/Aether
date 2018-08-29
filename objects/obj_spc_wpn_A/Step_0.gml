if phase = 1 //if the player has dropped from the floating animation
{

	if unlock = 1
	{
		global.shotgun = true;		
		unlock_name = "shotgun";
	}		

	if unlock = 2
	{
		global.trishot = true;	
		unlock_name = "trishot";
	}
	
	if unlock = 3
	{
		global.burst = true;	
		unlock_name = "burst";
	}

	if keyboard_check_pressed(ord("E")) && distance_to_object(obj_Player)
	{
		global.special = unlock_name;
	}
	
}
/*
if phase = 1 //if the player has dropped from the floating animation
{

	if unlock = 1
	{
		if global.shotgun != true
		{
			global.shotgun = true;			
		}
		
		unlock_name = "shotgun";
	}		

	if unlock = 2
	{
		if global.trishot != true
		{
			global.trishot = true;			
		}
		
		unlock_name = "trishot";
	}

	if unlock = 3
	{
		if global.burst != true
		{
			global.burst = true;			
		}
		
		unlock_name = "burst";
	}

	if keyboard_check_pressed(ord("E"))
	{
		global.special = unlock_name;
	}
	
}