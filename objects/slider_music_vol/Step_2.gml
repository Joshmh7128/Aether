if object_exists(snd_music)
if snd_music.sfx_control = 1
{
	audio_group_set_gain(audiogroup_music,global.music_vol,0)	
}
display_vol = (global.music_vol / vol_max) * 100