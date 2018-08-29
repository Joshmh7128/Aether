instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);

if hp <= 3
{
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
	instance_create(x+random_range(-300,+300),y+random_range(-300,+300), effect_spc_flair);
	instance_create(x,y,effect_shake)
	//instance_create(x,y,effect_shake)
}

if hp <= 0
{
	instance_create(x,y,special)
	instance_create(x,y,obj_spc_drop)
	instance_destroy();	
}

angle += 1;