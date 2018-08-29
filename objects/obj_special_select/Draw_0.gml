draw_set_font(font_3)
if unlocked = 0
{
	draw_sprite_ext(spr_shop_station,0,x,y,1,1,0,c_black,1);
	draw_text(x,y,"Locked")
}

if unlocked = 1
{
	if place_meeting(x,y,par_player)
	{
		draw_text(x,y-74,"''E''")	
	}
	
	draw_sprite_ext(spr_shop_station,0,x,y,1,1,0,c_white,1);
	draw_text(x,y,string(special_set))
}
draw_set_color(c_white)
