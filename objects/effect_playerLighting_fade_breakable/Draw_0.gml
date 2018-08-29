draw_set_color(c_black)
draw_set_alpha(1);

draw_triangle(x-16,y-16,x-16+lt_dirx,y-16+lt_diry,x+16+rt_dirx,y-16+rt_diry,0)
draw_triangle(x-16,y-16,x+16+rt_dirx,y-16+rt_diry,x+16,y-16,0)
draw_triangle(x-16,y+16,x-16+ld_dirx,y+16+ld_diry,x+16+rd_dirx,y+16+rd_diry,0)
draw_triangle(x-16,y+16,x+16,y+16,x+16+rd_dirx,y+16+rd_diry,0)
draw_triangle(x-16,y+16,x-16,y-16,x-16+lt_dirx,y-16+lt_diry,0)
draw_triangle(x-16,y+16,x-16+ld_dirx,y+16+ld_diry,x-16+lt_dirx,y-16+lt_diry,0)
draw_triangle(x+16,y+16,x+16,y-16,x+16+rd_dirx,y+16+rd_diry,0)
draw_triangle(x+16,y-16,x+16+rt_dirx,y-16+rt_diry,x+16+rd_dirx,y+16+rd_diry,0)
draw_rectangle(x-16,y-16,x+16,y+16,0)


if global.dev_mode = 1
{
	draw_set_alpha(0.5)
}

/*
if global.dev_mode != 0
{
visible = 0
}
else
{
visible = 1
};