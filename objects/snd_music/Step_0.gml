//All music controlled here
if music_control = 1
{
	if current_track = 0
	{
		if audio_is_playing(menu_main)
		{
			audio_stop_sound(menu_main)
		}
		
		if audio_is_playing(game_main)
		{
			audio_stop_sound(game_main)
		}
		
		if audio_is_playing(boss_main)
		{
			audio_stop_sound(boss_main)
		}
	}
	
	if room = room_tut
	{
		current_track = 0	
	}
	
	if room = room_start
	{
		current_track = 1	
	}
	
	if room != room_start && room != room_cyan_boss && room != room_tut && room != room_select
	{
		current_track = 2	
	}
	
	if room = room_cyan_boss
	{
		current_track = 3	
	}
	
	if room = room_select
	{
		current_track = 4	
	}

	
	if current_track = 1
	{	
		if !audio_is_playing(menu_main)
		{
			audio_play_sound(menu_main,1,1)	
		}
			
		if audio_is_playing(game_main)
		{
			//audio_stop_sound(game_main)
		}
	
	}
	
	if current_track = 2
	{
		if audio_is_playing(menu_main)
		{
			audio_stop_sound(menu_main)
		}
		
		if audio_is_playing(hub_main)
		{
			audio_stop_sound(hub_main)
		}
		
		if audio_is_playing(boss_main)
		{
			audio_stop_sound(boss_main)
		}
	
		if !audio_is_playing(game_main)
		{
			audio_play_sound(game_main,0 ,1)
		}
	
	}
	
	if current_track = 3
	{
		if audio_is_playing(menu_main)
		{
			audio_stop_sound(menu_main)
		}
	
		if audio_is_playing(game_main)
		{
			audio_stop_sound(game_main)
		}
		
		if !audio_is_playing(boss_main)
		{
			audio_play_sound(boss_main,0 ,1)
		}
	
		if audio_is_playing(hub_main)
		{
			audio_stop_sound(hub_main)
		}
	//audio_group_set_gain(audiogroup_sfx,global.sfx_vol,0)
	
	}
	
	if current_track = 4
	{
			if audio_is_playing(menu_main)
		{
			audio_stop_sound(menu_main)
		}
	
		if audio_is_playing(game_main)
		{
			audio_stop_sound(game_main)
		}
		
		if audio_is_playing(boss_main)
		{
			audio_stop_sound(boss_main)
		}
		
		if !audio_is_playing(hub_main)
		{
			audio_play_sound(hub_main,1,1)
		}
	}
	
}

//destroy old music object, create a new one in the room
if sfx_control = 0
{
	audio_group_load(audiogroup_sfx);
}

if music_control = 0
{
	audio_group_load(audiogroup_music);
}


