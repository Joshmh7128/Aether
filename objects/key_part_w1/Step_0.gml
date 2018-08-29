
image_angle += 1;

//Add to key counter, then destroy
if place_meeting(x,y,par_player)
{
	global.key_A_amount += 1;
	global.key_amount += 1;
	ds_list_add(global.key_list,id)
	instance_create(x,y,effect_secret);
	instance_destroy();
}

if keyScript(id) == true
{
	instance_destroy()
}