//sets direction
shooter = instance_nearest(x,y,boss_turret_moveR)
direction = 270
speed = 15
alarm[0] = 60
//launch effects
instance_create(x,y,obj_enemy_break_up)
instance_create(x,y,obj_enemy_break_down)
instance_create(x,y,obj_enemy_break_left)
instance_create(x,y,obj_enemy_break_right)

//shake effect
if distance_to_object(obj_Player) < 500
{
	instance_create(x,y,effect_shake)
}