if phase = 0 
{
	draw_sprite_ext(spr_spc_orb,1,x,y,1,1,0,color,1)
}
else
{
	draw_set_color(c_white)
	draw_set_font(font_3)
	draw_text(x,y-200,"Unlocked: " + string(unlock_name) + @"
	CHECK THE ARMORY TO CHANGE
	PRESS ''E'' TO USE THIS NOW" )
}