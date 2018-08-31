if !collision_line(x,y,obj_Player.x, obj_Player.y,par_wall,0,0)
and !collision_line(x,y,obj_Player.x, obj_Player.y,par_enemywall,0,0)
{
	return true;	
}
else
{
	return false;	
}