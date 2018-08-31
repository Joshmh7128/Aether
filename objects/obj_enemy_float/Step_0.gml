//determine direction, targets, ect
move_bounce_all(false)
target_dir = point_direction(x,y,global.playerx,global.playery);

if wallCheck() = true
{
	seen = true
}

if wallCheck() = false
{
	seen = false
}

if seen = true
{
	move_towards_point(global.playerx,global.playery,sp)
	
	if !alarm[1] && sp <= 0
	{
		alarm[1] = 30;	
	}
}

if seen = false
{
	if sp > 0
	{
		sp -= 1;
	}
}

if sp > 0
{
	sp -= 0.1;	
}

if place_meeting(x,y,par_bullet)
{
	hp -= 1;
}

if (hp <= 0)
{
	instance_create(x,y,effect_flash)
	instance_create(x,y,effect_pathfiner_turret_die)
	instance_create(x,y,effect_bit_spawn);
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	audio_play_sound(snd_enemy_break,1,false)
	instance_destroy();
}

if place_meeting(x,y,par_player)
{
	alarm[2] = 1;
	hp -= 3
}