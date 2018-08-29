if col_mode = 1
{
	draw_sprite(spr_mouse_black,0,x,y)
}

if col_mode = 0
{
	draw_sprite(spr_mouse,0,x,y)	
}
/*
color = draw_getpixel(x, y);
//color ^= c_white 
image_blend = color*-1;
