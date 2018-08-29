if mode = 1
{
	if amount = 1
	{
		instance_create(x,y,obj_enemy_turret);	
		instance_destroy();
	}
	
	if amount = 2
	{
		instance_create(x,y-50,obj_enemy_turret);	
		instance_create(x,y+50,obj_enemy_turret);	
		instance_destroy();
	}
	
	if amount = 3
	{
		instance_create(x-20,y-50,obj_enemy_turret);	
		instance_create(x-20,y+50,obj_enemy_turret);	
		instance_create(x+20,y,obj_enemy_turret);	
		instance_destroy();
	}

}

if mode = 2
{	
	if amount = 1
	{
		instance_create(x,y,obj_enemy_float);	
		instance_destroy();
	}
	
	if amount = 2
	{
		instance_create(x,y-50,obj_enemy_float);	
		instance_create(x,y+50,obj_enemy_float);	
		instance_destroy();
	}
	
	if amount = 3
	{
		instance_create(x-20,y-50,obj_enemy_float);	
		instance_create(x-20,y+50,obj_enemy_float);	
		instance_create(x+20,y,obj_enemy_float);	
		instance_destroy();
	}
}