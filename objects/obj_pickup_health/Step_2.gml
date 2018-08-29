if place_meeting(x,y,par_player) 
{
	if global.healthcount < obj_Player.maxhp
	{
		global.healthcount += 1
		audio_play_sound(snd_life_pickup,1,false)
		instance_create(x,y,obj_red_circle)
		instance_create(x,y,effect_secret)
		instance_destroy()
	}

}
