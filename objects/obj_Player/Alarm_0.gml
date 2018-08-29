if global.lifecount >= 1
{
	/*instance_create(x,y,effect_body_parts)
	instance_create(x,y,effect_death_white)
	alarm[3] = 60;*/
	//death_anim = 1;
	alarm[3] = 1;
}

if global.lifecount < 1
{
	room_goto(room_select);
	instance_create(x,y,game_reset);
	global.lifecount = 11; //can be set to maximum starting amount, always make it one more than it needs to be
}