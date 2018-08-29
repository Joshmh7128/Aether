y += grav;
grav += grav_inc;
image_angle += spin;

if collision_point(x,y+1,obj_wall,false,false) or collision_point(x,y+1,obj_wall_long_h,false,false) or collision_point(x,y+1,obj_wall_long_v,false,false) or collision_point(x,y+1,obj_wall_med_h,false,false) or collision_point(x,y+1,obj_wall_med_v,false,false)
{	
	grav = 0;
	grav_inc = 0;
	spin = 0;
	
	if !alarm[0]
	{
		alarm[0] = 1
	}
	//instance_destroy();
	//instance_deactivate_object(id)
	//alarm[0] = 15;
	/*
	surface_set_target(obj_bullet_surface.bullet_mask)
	surface_reset_target();*/
//	instance_destroy();
}