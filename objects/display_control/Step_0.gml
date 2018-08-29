if keyboard_check_pressed(vk_up) 
{
	display_reset(0,vsync)	
}

if keyboard_check_pressed(vk_left) 
{
	display_reset(2,vsync)	
}

if keyboard_check_pressed(vk_right) 
{
	display_reset(4,vsync)	
}

if keyboard_check_pressed(vk_down) 
{
	display_reset(8,vsync)	
}

if keyboard_check_pressed(vk_control) && vsync = false
{
	vsync = true
}

if keyboard_check_pressed(vk_control) && vsync = true
{
	vsync = false
}