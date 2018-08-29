//move_bounce_solid(true);

image_angle = direction;
instance_create(x,y,obj_bullet_trail)

hit = instance_place(x,y,par_enemy)
if (hit != noone)
{
    hit.hp -= 1;
    instance_destroy();
}

hit = instance_place(x,y,par_enemywall)
if (hit != noone)
{
    hit.hp -= 1;
    instance_destroy();
}

if place_meeting(x,y,par_wall)
{
	instance_create(x,y,obj_bullet_blood_break);
	instance_create(x,y,effect_flash_break)
	instance_destroy();	
}