if object_exists(obj_Player) && state = 1
{
	x = global.playerx + 7; //* sign(obj_Player.grav_state));
	y = global.playery - (8 * sign(obj_Player.grav_state));
}

if object_exists(obj_Player) && state = 2
{
	x = global.playerx - 7; //* sign(obj_Player.grav_state));
	y = global.playery - (8 * sign(obj_Player.grav_state));
}