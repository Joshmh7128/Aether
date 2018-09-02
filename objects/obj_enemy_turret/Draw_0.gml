//Look at the player 
sprite_angle = point_direction(x, y, global.playerx, global.playery);

draw_sprite_ext(spr_turret,0,x,y,1,1,sprite_angle,c_white,1)

if aim == true
{
	draw_line_width_color(x,y,global.playerx,global.playery,3,c_red,c_red)
}

draw_set_alpha(1)
//draw circles on every point cus you know, good
if global.dev_mode = 1
{
	draw_circle_color(p1x,p1y,10,c_white,c_white,true);
	draw_circle_color(p2x,p2y,10,c_white,c_white,true);
	draw_circle_color(p3x,p3y,10,c_white,c_white,true);
	draw_circle_color(p4x,p4y,10,c_white,c_white,true);
	draw_circle_color(p5x,p5y,10,c_white,c_white,true);
	draw_circle_color(p6x,p6y,10,c_white,c_white,true);
	draw_circle_color(p7x,p7y,10,c_white,c_white,true);
	draw_circle_color(p8x,p8y,10,c_white,c_white,true);
	draw_circle_color(p9x,p9y,10,c_white,c_white,true);
	draw_circle_color(p10x,p10y,10,c_white,c_white,true);
	draw_circle_color(p11x,p11y,10,c_white,c_white,true);
	draw_circle_color(p12x,p12y,10,c_white,c_white,true);
	draw_circle_color(p13x,p13y,10,c_white,c_white,true);
	draw_circle_color(p14x,p14y,10,c_white,c_white,true);
	draw_circle_color(p15x,p15y,10,c_white,c_white,true);
	draw_circle_color(p16x,p16y,10,c_white,c_white,true);
	draw_circle_color(p17x,p17y,10,c_white,c_white,true);
	draw_circle_color(p18x,p18y,10,c_white,c_white,true);
	draw_circle_color(p19x,p19y,10,c_white,c_white,true);
	draw_circle_color(p20x,p20y,10,c_white,c_white,true);
	draw_circle_color(p21x,p21y,10,c_white,c_white,true);
	draw_circle_color(p22x,p22y,10,c_white,c_white,true);
	draw_circle_color(p23x,p23y,10,c_white,c_white,true);
	draw_circle_color(p24x,p24y,10,c_white,c_white,true);
	draw_circle_color(p25x,p25y,10,c_white,c_white,true);

	//draw the sprites
	draw_sprite_ext(spr_32_line,1,p1x,p1y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p2x,p2y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p3x,p3y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p4x,p4y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p5x,p5y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p6x,p6y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p7x,p7y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p8x,p8y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p9x,p9y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p10x,p10y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p11x,p11y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p12x,p12y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p13x,p13y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p14x,p14y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p15x,p15y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p16x,p16y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p17x,p17y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p18x,p18y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p19x,p19y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p20x,p20y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p21x,p21y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p22x,p22y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p23x,p23y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p24x,p24y,1,1,sprite_angle,c_white,1);
	draw_sprite_ext(spr_32_line,1,p25x,p25y,1,1,sprite_angle,c_white,1);
}
//Sprite Control
draw_set_alpha(1);

if hp = 5
{
	draw_sprite_ext(spr_turret, 0, x, y, 1, 1, sprite_angle, c_white, 1);
}

if hp = 4
{
	draw_sprite_ext(spr_turret, 1, x, y, 1, 1, sprite_angle, c_white, 1);
}

if hp = 3
{
	draw_sprite_ext(spr_turret, 2, x, y, 1, 1, sprite_angle, c_white, 1);
}

if hp = 2
{
	draw_sprite_ext(spr_turret, 3, x, y, 1, 1, sprite_angle, c_white, 1);
}

if hp = 1
{
	draw_sprite_ext(spr_turret, 4, x, y, 1, 1, sprite_angle, c_white, 1);
}


draw_set_alpha(1)

//draw target line
if global.dev_mode != 0
{
	draw_line_width_colour(x, y, global.playerx, global.playery, 1, c_red, c_red);
}


//draw some dev stuff for the aim bool
if global.dev_mode != 0
{
	if aim
	{
		draw_set_color(c_lime)
		draw_rectangle(x-28,y-28,x+28,y+28,false)
	}
	else
	{
		draw_set_color(c_red)
		draw_rectangle(x-28,y-28,x+28,y+28,false)
	}
}