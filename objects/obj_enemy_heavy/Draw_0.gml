//Look at the player 
sprite_angle = point_direction(x, y, global.playerx, global.playery);

//Sprite Control
if (hp > 10)
{
	draw_sprite_ext(spr_heavy1, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp <= 10)
{
	draw_sprite_ext(spr_heavy2, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if (hp <= 5)
{
	draw_sprite_ext(spr_heavy3, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

//draw target line
if global.dev_mode != 0
{
	draw_line_width_colour(x, y, global.playerx, global.playery, 1, c_red, c_red);
}



draw_healthbar(x-64,y+80,x+64,y+110,hp_draw,c_black,c_red,c_lime,0,false,false)