//Get lighting positions from players
	point_lt = point_direction(obj_Player.x,obj_Player.y,x-256,y-16)
	point_rt = point_direction(obj_Player.x,obj_Player.y,x+256,y-16)
	point_ld = point_direction(obj_Player.x,obj_Player.y,x-256,y+16)
	point_rd = point_direction(obj_Player.x,obj_Player.y,x+256,y+16)
alarm[0] = global.frametime;