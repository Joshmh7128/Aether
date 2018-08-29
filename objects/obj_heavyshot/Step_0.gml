//move_bounce_solid(true);

instance_create(x,y,obj_bullet_trail_red)
image_angle = direction

if place_meeting(x,y,par_all_wall)
{
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	instance_create(x,y,effect_heavyshake)
	instance_destroy()
}

if place_meeting(x,y,par_player)
{
	instance_create(x,y,obj_checkpoint_up)
	instance_create(x,y,obj_checkpoint_down)
	instance_create(x,y,obj_checkpoint_left)
	instance_create(x,y,obj_checkpoint_right)
	instance_create(x,y,effect_heavyshake)
	global.healthcount -= 1
	instance_destroy()
}
