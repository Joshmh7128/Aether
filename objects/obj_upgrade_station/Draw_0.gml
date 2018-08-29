image_speed = 0;
draw_self()
//draw_healthbar(x-32,y-64,x+32,y+64,collect_show,c_black,c_white,c_white,3,false,false)
draw_set_color(c_white)
draw_sprite_ext(spr_coin,0,x-30,y-77,1,1,rot,c_white,1)
draw_set_font(font_3)
draw_text(x,y-90,string(price))

	if upgrade = 0
	{
		name = "+1 Health";
		draw_text(x,y-120,"+1 Health")
	}
	
	if upgrade = 1
	{
		name = "+1 Player Speed";
		draw_text(x,y-120,"+1 Player Speed")
	}
	
	if upgrade = 2
	{
		name = "Automatic Fire";
		draw_text(x,y-120,string(name))
	}
	
	if upgrade = 3
	{
		name = "+1 Jump Height";
		draw_text(x,y-120,"+1 Jump Height")
	}
	
	if upgrade = 4
	{
		name = "+1 Multishot";
		draw_text(x,y-120,"+1 Multishot")
	}
	
if phase = 1
{
	image_index = 1;
}