//Get lighting positions from players
point_lt = point_direction(obj_Player.x,obj_Player.y,x,y)
point_rt = point_direction(obj_Player.x,obj_Player.y,x+32,y)
point_ld = point_direction(obj_Player.x,obj_Player.y,x,y+32)
point_rd = point_direction(obj_Player.x,obj_Player.y,x+32,y+32)
alarm[0] = global.frametime;