x += hsp
y += vsp


if x < 1100
{
	instance_destroy();
}

if boss_control.boss_state = 3
{
	instance_destroy();
}

if hp >= 3
{
	sprite_index = spr_boss_turret_1;
}

if hp = 2
{
	sprite_index = spr_boss_turret_2;	
}

if hp = 1
{
	sprite_index = spr_boss_turret_3;	
}

if hp <= 0
{
	sprite_index = spr_boss_turret_4;	
}