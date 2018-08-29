//determine direction, targets, ect
checkdir = point_direction(x,y,global.playerx,global.playery);
var target = obj_Player


if !collision_line(x,y,global.playerx,global.playery,par_all_wall,false,true) 
{
	aim = 1;
	
	if !alarm[0]
	{
		alarm[0] = 30;
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

if (hp <= 0)
{
	instance_create(x,y,effect_flash)
	instance_create(x,y,effect_turret_die)
	instance_create(x,y,effect_bit_spawn)
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	audio_play_sound(snd_enemy_break,1,false)
	instance_destroy();
}


if place_meeting(x,y,obj_dChange)
{
	hsp *= -1
	vsp *= -1
}
x += hsp
y += vsp