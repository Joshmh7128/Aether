hit = instance_place(x,y,par_enemy)
if (hit != noone)
{
    hit.hp -= 1;
    instance_destroy();
}

if place_meeting(x,y,par_enemywall) or place_meeting(x,y,par_wall)
{
instance_destroy()
}

