if global.devtools = 1
{
	draw_sprite_stretched(spr_check,1,x,y,50,50)	
}

if global.devtools = 0
{
	draw_sprite_stretched(spr_x,1,x,y,50,50)	
}

draw_set_font(font_2);
draw_text(x-130,y-10,"Dev Tools?");
//draw_sprite(spr_buttonTools,1,x-10,y)