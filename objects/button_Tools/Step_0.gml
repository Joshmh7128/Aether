if place_meeting(x,y,obj_mouse) && mouse_check_button_pressed(mb_left)
{
		global.devtools = !global.devtools
}

if place_meeting(x,y,obj_mouse)
{
		if keyboard_check_pressed(vk_up)
		{
			window_set_size(1920,1080)
		}
		
		if keyboard_check_pressed(vk_down)
		{
			window_set_size(1280,720)
		}
}