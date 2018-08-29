draw_self()
draw_set_color(c_white)
draw_set_font(font_3)
if place_meeting(x,y,par_player)
{
	draw_text(x,y-110,"''E''")
}

if draw_map = 1
{
	draw_sprite(spr_map_1,0,map_x,map_y)
}
