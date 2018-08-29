if place_meeting(x,y,obj_mouse)
{
	if alpha1 > 0
	{
		alpha1 -= 0.1
	}
	
	if alpha2 < 1
	{
		alpha2 += 0.1	
	}
	
	if mouse_check_button_pressed(mb_left)
	{
		option_control *= -1;
	}
}
else
{

	if alpha2 > 0
	{
		alpha2 -= 0.1
	}
	
	if alpha1 < 1
	{
		alpha1 += 0.1	
	}

}

if option_control = -1
{
	slider_music_vol.x = 1630
	slider_music_vol.y = 270
	slider_sfx_vol.x = 1400
	slider_sfx_vol.y = 270	
	slider_arrow_sfx.x = 1400
	slider_arrow_music.x = 1600
	slider_arrow_music_down.x = 1600
	slider_arrow_sfx_down.x = 1400
}
else
{
	slider_music_vol.x = -200
	slider_sfx_vol.x = -200
	slider_arrow_music.x = -200
	slider_arrow_music_down.x = -200
	slider_arrow_sfx.x = -200
	slider_arrow_sfx_down.x = -200 
}