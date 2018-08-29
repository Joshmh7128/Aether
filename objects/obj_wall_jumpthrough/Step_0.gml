if (instance_exists(obj_Player))
{
	if (round(obj_Player.y)) + (31) > y+1 && !place_meeting(x,y,par_player)
	{
		mask_index = -1;
	}
	else
	{
		mask_index = spr_wall_jumpthrough;
	}
}

