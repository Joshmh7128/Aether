image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);

if obj_mouse.x > global.playerx
{
image_yscale = 1 * sign(obj_Player.grav_state);
facing = 1;
}

if obj_mouse.x < global.playerx
{
image_yscale = -1 * sign(obj_Player.grav_state);
facing = 2;
}

if global.player_skin = 1
{
	sprite_index = spr_PlayerHead;
}

if global.player_skin = 2
{
	sprite_index = spr_PlayerHead_orig;
}

if global.player_skin = 3
{
	sprite_index = spr_PlayerHead_purple;
}

if global.player_skin = 4
{
	sprite_index = spr_PlayerHead_electric;
}

if global.player_skin = 5
{
	sprite_index = spr_PlayerHead_splinter;
}

if global.player_skin = 6
{
	sprite_index = spr_PlayerHead_cyclops;
}
