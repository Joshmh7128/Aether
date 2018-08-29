if mouse_check_button(mb_left)
{
	if global.multishot = 0
	{
		if charge > 20
		{
			instance_create(x,y,effect_shake)
			instance_create(x,y,obj_bullet)
			charge -= 10
			audio_play_sound(laser_sound,1,false)
			alarm[1] = automatic_alarm;
		}
	}
	
	if global.multishot = 1
	{
		if charge > 20
		{
			instance_create(x,y,effect_shake)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			charge -= 10
			audio_play_sound(laser_sound,1,false)
			alarm[1] = automatic_alarm;
		}	
	}
	
	if global.multishot = 2
	{
		if charge > 20
		{
			instance_create(x,y,effect_shake)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			charge -= 10
			audio_play_sound(laser_sound,1,false)
			alarm[1] = automatic_alarm;
		}	
	}
		
	if global.multishot = 3
	{
		if charge > 20
		{
			instance_create(x,y,effect_shake)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			instance_create(x,y,obj_bullet)
			charge -= 10
			audio_play_sound(laser_sound,1,false)
			alarm[1] = automatic_alarm;
		}	
	}
	
}
