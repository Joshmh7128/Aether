if place_meeting(x,y,par_player)
{
	if !alarm[1]
	{
		alarm[1] = 1;
	}
}

if a_count < 1
	{
		image_index  = 0;
		instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair)
	}

if a_count < full_count && a_count >  1
{
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
}

if a_count > full_count
{
	image_index  = 1;
}
