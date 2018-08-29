if hp > 0
{
	if place_meeting(x,y,room_define)
	{
		instance_create(x-32,y,obj_enemyball_moveL)
		instance_create(x-64,y,obj_enemyball_moveL)
		instance_create(x+32,y,obj_enemyball_moveL)
		instance_create(x+64,y,obj_enemyball_moveL)
	}
	alarm[0] = 30
}