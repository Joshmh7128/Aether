if place_meeting(x,y,par_player)
{
	global.healthcount -= 1
	obj_Player.red_ping += 1
	instance_create(x,y,effect_heavyshake)
	instance_destroy()
}