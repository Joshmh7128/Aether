//Look at the player 
sprite_angle = point_direction(x, y, global.playerx, global.playery);

if aim = 1
{
	draw_line_color(x,y,global.playerx,global.playery,c_red,c_red)
}

//Sprite Control
if (hp = 3)
{
draw_sprite_ext( spr_turret, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp = 2)
{
draw_sprite_ext( spr_turret2, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp = 1)
{
draw_sprite_ext( spr_turret3, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

//draw target line
if global.dev_mode != 0
{
draw_line_width_colour(x, y, global.playerx, global.playery, 1, c_red, c_red);
}

