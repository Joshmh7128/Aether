if place_meeting(x,y,obj_mouse) && mouse_check_button(mb_left) && global.music_vol >= 0 && global.music_vol <= 1 
{
	global.music_vol += amount;
}

if global.music_vol > 1
{
	global.music_vol -= 0.025	
}

if global.music_vol < 0
{
	global.music_vol += 0.025	
}

if keyboard_check(vk_up)
{
	global.music_vol += amount;
}

if keyboard_check(vk_down)
{
	global.music_vol -= amount;
}

//x = vol_mod