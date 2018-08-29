//line of sight
checkrange = 12800;
checkdir = 0;
checkseen = false;
checktarget = -1;
hp = 3;
jumpspeed = 8;
jumpactive = 0;
seen = false
//movement
vsp = 0;
hsp = 0;
movespeed = 3.5; //is now defined in Script_plan
//knockback
facing = 0
//spawnset
spawn_x = x
spawn_y = y
//target
target_player = instance_nearest(x,y,obj_Player)
path = path_add();
alarm[0] = 1