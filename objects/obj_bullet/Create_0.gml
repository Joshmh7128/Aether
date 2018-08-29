move_towards_point(obj_mouse.x+(random_range(32,-32)),obj_mouse.y+(random_range(32,-32)),speed);
speed = 30+global.bullet_speed;
image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);
hp = 2;
depth = -401;
self_destroy = 0;
nohurt = 0;
//effects
instance_create(x,y,obj_bullet_blood)
instance_create(x,y,obj_bullet_blood)
instance_create(x,y,effect_muzzle_flash_player)
alarm[0] = 60;
