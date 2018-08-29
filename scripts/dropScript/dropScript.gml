if place_meeting(x,y,par_player) && keyboard_check_pressed(ord("E"))
{
	if global.special = "none"
	{	
	
	}
	
	if global.special = "shotgun"
	{
		if !instance_exists(obj_spc_shotgun)
		instance_create(x,y,obj_spc_shotgun);
	}
	
	if global.special = "burst"
	{
		if !instance_exists(obj_spc_burst)
		instance_create(x,y,obj_spc_burst);
	}
}