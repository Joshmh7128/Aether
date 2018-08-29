mask_index = spr_wall_move;

//Set mask and whatnot
if (instance_exists(obj_Player))
{
	if (round(obj_Player.y + (obj_Player.sprite_height/2)) > self.y) 
	{
	mask_index = -1;
	sprite_index = spr_wall_mover;
	}
	else
	{
	mask_index = spr_wall_move;
	sprite_index = spr_wall_move;
		if place_meeting(x,y-1,obj_Player)
		{
			obj_Player.vsp = vspeed
			obj_Player.grav = 0
		}
		else
		{
			obj_Player.grav = obj_Player.Ograv
		}
	}
}
