/*if collision_circle(goto_x,goto_y,check_range,par_player,false,true)
{
	move_towards_point(goto_x,goto_y,speed)
	active = 0
}

if x = round(goto_x) && y = round(goto_y) && collision_circle(goto_x,goto_y,check_range,par_player,false,true)
{
	mask_index = 1;
	speed = 0;
}

if !collision_circle(goto_x,goto_y,check_range,par_player,false,true)
{
	mask_index = -1;	
	speed = 30;
	move_towards_point(-200*(random_range(1,-1)),-200*(random_range(1,-1)),speed)
}