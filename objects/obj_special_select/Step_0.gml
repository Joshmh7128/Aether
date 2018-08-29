if check = true
{
	unlocked = 1;
}

if check = false
{
	unlocked = 0;		
}

if place_meeting(x,y,par_player) and keyboard_check_pressed(ord("E")) and unlocked = 1
{
	instance_create(x,y,effect_da)
	instance_create(x,y,effect_da)
	instance_create(x,y,effect_da)
	instance_create(x,y,effect_da)
	
	global.special = special_set;
}

