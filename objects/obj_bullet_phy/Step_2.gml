//move_bounce_solid(true);
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


