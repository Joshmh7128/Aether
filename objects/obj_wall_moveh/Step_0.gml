mask_index = spr_wall_move;


//Vertical collision
if (place_meeting(x,y+vsp,par_wall))
{
    while(!place_meeting(x,y+sign(vsp),par_wall))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Horizontal collision
if (place_meeting(x+hsp,y,par_wall))
{
    while(!place_meeting(x+sign(hsp),y,par_wall))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Set mask and whatnot
if (instance_exists(obj_Player))
{
	if (round(obj_Player.y + (obj_Player.sprite_height/2)) > self.y) 
	{
	mask_index = -1;
	}
	else
	{
	mask_index = spr_wall_move;
		if place_meeting(x,y-1,obj_Player)
		{
			obj_Player.hsp_carry = hsp
		}
	}
}
