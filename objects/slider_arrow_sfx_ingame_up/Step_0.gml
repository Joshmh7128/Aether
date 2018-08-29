if place_meeting(x,y,obj_mouse) && mouse_check_button(mb_left) && global.sfx_vol >= 0 && global.sfx_vol <= 1 
{
	global.sfx_vol += amount;
}

if global.sfx_vol > 1
{
	global.sfx_vol -= 0.025	
}

if global.sfx_vol < 0
{
	global.sfx_vol += 0.025	
}

x = button_paused.x+200
y = button_paused.y+175
