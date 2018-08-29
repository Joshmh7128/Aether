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
		room_goto(room_select);
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