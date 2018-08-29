if place_meeting(x,y,par_player)
{
	global.special = special_set
}

if global.special = special_set
{
	if image_alpha >= 0
	{
		image_alpha -= 0.1
	}
}

if global.special != special_set
{
	if image_alpha <= 1
	{
		image_alpha += 0.1
	}
}