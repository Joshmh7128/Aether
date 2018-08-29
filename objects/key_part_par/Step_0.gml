/*image_angle += 1;

//Add to key counter, then destroy
if place_meeting(x,y,par_player)
{
	if object_exists(key_counter)
	{
		global.key_A_amount =+ 1;
		instance_create(x,y,effect_secret);
		instance_destroy();
	}
}