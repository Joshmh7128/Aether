//only one mode since we're not working with more than one type of wall
draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_aqua,alpha)

//Dev Draw for Distance Lines
if global.dev_mode != 0 && alpha > 0
{
	draw_set_color(c_aqua)
	draw_set_alpha(0.25)
	draw_line(x,y,global.playerx,global.playery)
}
