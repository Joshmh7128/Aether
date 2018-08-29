if place_meeting(x,y,par_wall)
{
	instance_destroy()	
}

move_contact_solid(instance_nearest(x,y,obj_enemy_quadshot.direction+90),1000)