if direction_change = 1
{
	direction += direction_speed
}
/*
if direction_speed < 0.5
{
	direction_speed += 0.1
}
*/
if direction_change = 2
{
	direction += direction_speed
}

if direction >= 315
{
	if direction_speed >= -0.5
	{
	direction_speed -= 0.025
	}
}

if direction <= 225
{
	if direction_speed <= 0.5
	{
	direction_speed += 0.025
	}
}



/*
draw_sprite_ext(spr_detect,0,x,y,1,1,direction,c_white,1)
draw_sprite_ext(spr_long_line,0,x,y,1,1,direction,c_white,1)

draw_set_color(c_white)
draw_set_alpha(0.8)
draw_circle(global.drawtox, global.drawtoy, 50, false)
draw_set_alpha(1.0)