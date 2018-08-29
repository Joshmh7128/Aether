//Get lighting positions from players
	//Light directions from player to wall
	point_lt = point_direction(obj_Player.x,obj_Player.y,x-16,y-160)
	point_rt = point_direction(obj_Player.x,obj_Player.y,x+16,y-160)
	point_ld = point_direction(obj_Player.x,obj_Player.y,x-16,y+160)
	point_rd = point_direction(obj_Player.x,obj_Player.y,x+16,y+160)
alarm[0] = global.frametime;