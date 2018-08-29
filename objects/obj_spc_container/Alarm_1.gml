if a_count < full_count
{
	obj_Player.x = x;
	obj_Player.y = y;
	alarm[1] = 1;
	image_index = 0;
	camera_main.current_focus = obj_spc_container;
	camera_main.current_mouse = obj_spc_container;
	instance_create(x,y,effect_shake_tiny)
}

if a_count > full_count
{
	image_index = 1;
	camera_main.current_focus = obj_Player;
	camera_main.current_mouse = obj_mouse;
	set.phase = 1;
	//global.special = set.special;
	//spcScript(set.special)
}

a_count += 1;