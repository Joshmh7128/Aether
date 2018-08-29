draw_self();

/*surface_set_target(application_surface)
draw_self();
surface_reset_target();
draw_set_alpha(1);

if surface_exists(obj_bullet_surface.bullet_mask) && draw = 1
{
	surface_set_target(obj_bullet_surface.bullet_mask)
	draw_self()
	surface_reset_target();
	draw_surface(obj_bullet_surface.bullet_mask,x,y)
	instance_destroy()
}