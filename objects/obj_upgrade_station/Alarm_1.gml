global.upgrade_point_amount -= price;

if upgrade = 0
{
	instance_create(x,y,obj_health_upgrade)
	run = 1;
	instance_destroy();
}

if upgrade = 1
{
	global.player_speed += 1;
	run = 1;
}

if upgrade = 2
{
	global.automatic_fire += 1;
	run = 1;
}

if upgrade = 3
{
	global.jump_height += 1;
	run = 1;
}

if upgrade = 4
{
	global.bullet_speed +=1;
	run = 1;
}

if upgrade = 5
{
	global.multishot +=1;
	run = 1;
}