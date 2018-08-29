if terminal.draw_map = 1
{
	if place_meeting(x,y,obj_mouse)
	{
		visible = 1;
	}
	else
	{
		visible = 0;
	}	
}
else
{
	visible = 0;	
}

if place_meeting(x,y,obj_mouse) & mouse_check_button(mb_left) && trvlScript(room_select) == true
{
	room_goto(room_blue_1);
}