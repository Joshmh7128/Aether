r = x+16
t = y-16
l = x-16
b = y+16

rt = point_direction(obj_Player.x,obj_Player.y,r,t)
lt = point_direction(obj_Player.x,obj_Player.y,l,t)
rb = point_direction(obj_Player.x,obj_Player.y,r,b)
lb = point_direction(obj_Player.x,obj_Player.y,l,b)

crb = point_direction(x,y,r,b)
clb = point_direction(x,y,l,b)
crt = point_direction(x,y,r,t)
clt = point_direction(x,y,l,t)

/*
rtx_l = lengthdir_x(100,point_direction(global.playerx,global.playery,x+16,y-16))
rty_l = lengthdir_y(100,point_direction(global.playerx,global.playery,x+16,y-16))
rb = lengthdir_x(100,point_direction(global.playerx,global.playery,x+16,y+16))
lt = lengthdir_x(100,point_direction(global.playerx,global.playery,x+16,y-16))

rt = point_direction(r,t,global.playerx,global.playery)
lt = point_direction(l,t,global.playerx,global.playery)
rb = point_direction(r,b,global.playerx,global.playery)
lb = point_direction(l,b,global.playerx,global.playery)