if place_meeting(x,y,par_player)
{
	global.healthcount -= 1
	instance_create(x,y,effect_heavyshake)
	instance_create_depth(x,y,depth-200,effect_hurt)
	instance_destroy()
}