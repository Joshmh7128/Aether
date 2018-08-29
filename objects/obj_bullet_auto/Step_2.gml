image_angle = direction;

instance_create(x,y,obj_auto_trail)

hit = instance_place(x,y,obj_wall)
if (hit != noone)
{
    instance_destroy();
}

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


