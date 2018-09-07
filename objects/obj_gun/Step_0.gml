image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);

if obj_mouse.x > global.playerx
{
	image_yscale = 1 * sign(obj_Player.grav_state);
	state = 1;
}

if obj_mouse.x < global.playerx
{
	image_yscale = -1 * sign(obj_Player.grav_state);
	state = 2;
}

if mouse_check_button_pressed(mb_left)
{
	alarm[0] = 1;
	alarm[1] = 4;
}

if global.gamepad_mode = 1
{
	var hraxis = gamepad_axis_value(0, gp_axisrh);
	var vraxis = gamepad_axis_value(0, gp_axisrv);
	point_angle = point_direction(0,0,hraxis, vraxis);
	image_angle = point_angle;
}

gun_point_x = x+25
gun_point_y = y+9

htip = lengthdir_x(5,point_angle)
vtip = lengthdir_y(5,point_angle)

if global.player_skin = 1
{
	sprite_index = spr_gun;
}

if global.player_skin = 2
{
	sprite_index = spr_gun_orig;
}

if global.player_skin = 3
{
	sprite_index = spr_gun_purple;
}

if global.player_skin = 4
{
	sprite_index = spr_gun_electric;
}

if global.player_skin = 5
{
	sprite_index = spr_gun_splinter;
}

if global.player_skin = 6
{
	sprite_index = spr_gun_cyclops;
}

