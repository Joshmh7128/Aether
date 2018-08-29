//move_bounce_solid(true);

instance_create(x,y,obj_bullet_trail_red)
image_angle = direction

if place_meeting(x,y,par_wall) or place_meeting(x,y,par_enemywall)
{
	instance_destroy()
}
