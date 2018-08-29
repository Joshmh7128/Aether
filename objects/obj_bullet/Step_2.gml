image_angle = direction;
//move_bounce_solid(false);

hit = instance_place(x,y,par_enemy)
if (hit != noone)
{
    hit.hp -= 1;
	instance_create(x,y,effect_flash)
    instance_destroy();
}

hit = instance_place(x,y,par_enemywall)
if (hit != noone)
{
    hit.hp -= 1;
	instance_create(x,y,effect_flash)
    instance_destroy();
}


hit_boss = instance_place(x,y,par_boss)
if (hit_boss != noone)
{
	if hit_boss.hp > 0
	{
		hit_boss.hp -= 1;
		global.boss_health -= 10;
		instance_destroy();
	}
	else
	{
		hit_boss.hp -= 0;
		global.boss_health -= 0;
	}
}

if place_meeting(x,y,par_wall)
{
	instance_create(x,y,obj_bullet_blood_break);
	instance_create(x,y,effect_flash_break)
	instance_destroy();	
}
/* 
//Horizontal bounce
if	(place_meeting(x + hspeed, y,par_wall))
{
    direction = -direction + 180;
}
//Vertical bounce

if	(place_meeting(x, y + vspeed, par_wall))
{
    direction = -direction
}