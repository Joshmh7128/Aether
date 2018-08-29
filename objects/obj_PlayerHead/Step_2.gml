if object_exists(obj_Player)
{
x = global.playerx;
y = global.playery - (20*sign(obj_Player.grav_state));
}

if mouse_y < global.playery && facing = 1
{
x -= 2 * sign(obj_Player.grav_state)
}

if mouse_y < global.playery && facing = 2
{
x += 2 * sign(obj_Player.grav_state)
}

if mouse_y > global.playery && facing = 1
{
x += 2 * sign(obj_Player.grav_state)
}

if mouse_y > global.playery && facing = 2
{
x -= 2 * sign(obj_Player.grav_state)
}

