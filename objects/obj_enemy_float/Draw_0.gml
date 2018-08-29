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
/*
//use to draw the actual lengthdir check 
	{
	draw_set_color(c_white)
	draw_line(x,y,lengthdir_x(checkrange,checkdir),lengthdir_y(checkrange,checkdir))
	}
*/
}

//draw_line_color(x+16,y+16,global.playerx+16,global.playery+16,c_yellow,c_yellow);
//draw_line_color(x-16,y-16,global.playerx-16,global.playery-16,c_yellow,c_yellow);
if seen = true
{
	draw_line_color(x,y,global.playerx,global.playery,c_red,c_red);
}