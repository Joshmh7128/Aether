boss_health_display = (global.boss_health / 500)*100;
if global.boss_health > 500
{
	global.boss_health -= 1;
}

if boss_control.boss_state = 2
{
	if y > 4063
	{
		y -= 3;
	}
}

if global.boss_health < 300
{
	instance_create(x,y,effect_shake_tiny)	
}

if global.boss_health < 100
{
	instance_create(x,y,effect_shake)	
}

if global.boss_health = 0
{
	instance_destroy()
}