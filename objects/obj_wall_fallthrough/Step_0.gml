if (instance_exists(obj_Player))
{
	if (round(obj_Player.y) - 61) < self.y
	{
		mask_index = -1;
	}
	else
	{
		mask_index = spr_wall_jumpthrough;
	}
}