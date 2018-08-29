image_angle = direction;

hit = instance_place(x,y,par_enemy)
if (hit != noone)
{
    hit.hp -= 1;
	camera_main.current_focus = obj_Player;
    instance_destroy();
}

hit_enemy = instance_place(x,y,par_enemywall)
if (hit_enemy != noone)
{
    hit_enemy.hp -= 1;
	camera_main.current_focus = obj_Player;
	instance_destroy();
}

hit_wall = instance_place(x,y,par_all_wall)
if (hit_wall != noone)
{
	camera_main.current_focus = obj_Player;
	instance_destroy();
}