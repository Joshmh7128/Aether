with (obj_bullet_homing) {


target_enemy = instance_nearest(x,y,par_enemy)
move_towards_point(target_enemy.x,target_enemy.y,speed)
speed = 42;

image_angle = point_direction(x, y, target_enemy.x, target_enemy.y);
hp = 2
alarm[0] = 90

path = path_add();
mp_grid_add_instances(path,par_wall,1)
mp_grid_path(global.grid,path,x,y,target_enemy.x,target_enemy.y,1)
path_start(path,42,"",1);
}
