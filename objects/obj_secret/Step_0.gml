image_angle += 1;

if place_meeting(x,y,par_player)
{
	audio_play_sound(snd_checkpoint,1,0)
	ds_list_add(global.secret_list,id)
	global.secret_amount += 1;
	global.lifecount += 1;
	instance_create(x,y,effect_secret)
	instance_destroy()
}

if secretScript(id) == true
{
	instance_destroy()
}