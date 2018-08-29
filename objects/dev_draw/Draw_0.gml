//draw lives
if global.dev_mode != 0
{
	//draw player target line
	{
		draw_set_color(c_lime)
		draw_line(global.playerx, global.playery,obj_mouse.x,obj_mouse.y)
	}
	show_debug_overlay(true)
	
}

if keyboard_check_released(ord("M"))
{
show_debug_overlay(true)
}