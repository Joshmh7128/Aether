if obj_mouse.x > global.playerx
{
image_xscale = 1;
image_yscale = sign(obj_Player.grav_state)
}

if obj_mouse.x < global.playerx
{
image_xscale = -1;
image_yscale = sign(obj_Player.grav_state)
}

if global.player_skin = 1
{
	sprite_index = spr_PlayerIdleTorso;
}

if global.player_skin = 2
{
	sprite_index = spr_PlayerIdleTorso_orig;
}

if global.player_skin = 3
{
	sprite_index = spr_PlayerIdleTorso_purple;
}

if global.player_skin = 4
{
	sprite_index = spr_PlayerIdleTorso_electric;
}

if global.player_skin = 5
{
	sprite_index = spr_PlayerIdleTorso_splinter;
}

if global.player_skin = 6
{
	sprite_index = spr_PlayerIdleTorso_cyclops;
}