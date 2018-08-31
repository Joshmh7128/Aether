move_bounce_all(false)

if !collision_line(x,y,obj_Player.x, obj_Player.y,par_all_wall,1,0)
{
	aim = true;
}
else
{
	aim = false;	
}

/*

if !collision_line(x,y,obj_Player.x,obj_Player.y,par_all_wall,false,true) 
{
	aim = 1;
	
	if !alarm[0]
	{
		alarm[0] = 40;
	}
}
else
{
	aim = 0;	
	
	if alarm[0]
	{
		alarm[0] = 0;
	}
}

speed = 0.5;

if hp = 4
{
	if !alarm[1] 
	{
		alarm[1] = 30;	
	}
	speed = 5;
}

if hp = 3
{
	speed = 5;	
}

if hp = 2
{
	speed = 5;	
}

if hp = 1
{
	speed = 5;	
}

if (hp <= 0)
{
	instance_create_depth(x,y,-1010,effect_flash)
	instance_create(x,y,effect_turret_die)
	instance_create(x,y,effect_bit_spawn)
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	audio_play_sound(snd_enemy_break,1,false)
	instance_destroy();
}