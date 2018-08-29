if place_meeting(x,y,par_player) && global.active_checkpoint != local_checkpoint_num
{
	global.active_checkpoint = local_checkpoint_num
	global.active_checkpointx = local_checkpoint_x
	global.active_checkpointy = local_checkpoint_y
	sprite_index = spr_checkpoint_active
	audio_play_sound(snd_checkpoint, 1, false)
	instance_create(x,y,obj_checkpoint_up)
	instance_create(x,y,obj_checkpoint_down)
	instance_create(x,y,obj_checkpoint_left)
	instance_create(x,y,obj_checkpoint_left)
	instance_create(x,y,obj_checkpoint_right)
	instance_create(x,y,obj_checkpoint_circle)
}



if global.healthcount < obj_Player.maxhp && place_meeting(x,y,par_player) && (active = 0)
{
    global.healthcount = obj_Player.maxhp
	
}


if global.healthcount <= 0 && place_meeting(x,y,par_player)
{
    global.healthcount = obj_Player.maxhp

}


if global.active_checkpoint != local_checkpoint_num
{
	sprite_index = spr_checkpoint
	active = 0
}
else
{
	active = 1
}


