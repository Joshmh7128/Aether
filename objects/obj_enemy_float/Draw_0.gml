//Look at the player 
sprite_angle = point_direction(x, y, global.playerx, global.playery);

//Sprite Control
if (hp >= 3)
{
	draw_sprite_ext(spr_enemy_float, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp == 2)
{
	draw_sprite_ext(spr_enemy_float_2, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp <= 1)
{
	draw_sprite_ext(spr_enemy_float_3, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if global.dev_mode != 0
{
//use to draw the actual coneceptual aspect
	{
		draw_set_color(c_yellow)
		draw_line(x,y,global.playerx,global.playery)
	}
}

if aim = true
{
	draw_line_color(x,y,global.playerx,global.playery,c_red,c_red);
}
else
{
}