if hp = 4
{
	image_index = 0
}

if hp = 3
{
	image_index = 1
	instance_create(x,y,effect_shake_tiny)
}

if hp = 2
{
	image_index = 2
	instance_create(x,y,effect_shake_small)
}

if hp = 1
{
	image_index = 3
	instance_create(x,y,effect_shake)
}

if hp <= 0
{
	snd_music.current_track = 3
	boss_control.boss_state = 1
	instance_destroy()	
}