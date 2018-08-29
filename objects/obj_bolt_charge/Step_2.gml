image_angle = point_direction(x, y, mouse_x, mouse_y);
x = obj_gun.x
y = obj_gun.y

if mouse_x > global.playerx
{
state = 1
}

if mouse_x < global.playerx
{
state = 2
}

if object_exists(obj_Player) && state = 1
{
x = global.playerx+7;
y = global.playery;
}

if object_exists(obj_Player) && state = 2
{
x = global.playerx-7;
y = global.playery;
}

