if audio_group_is_loaded(audiogroup_music)
{
	music_control = 1	
}
else
{
	audio_group_load(audiogroup_music)
}

if audio_group_is_loaded(audiogroup_sfx)
{
	sfx_control = 1	
}
else
{
	audio_group_load(audiogroup_sfx)	
}
