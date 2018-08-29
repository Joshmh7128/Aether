//draw the green LOS effect
draw_set_alpha(1);
draw_set_color(c_lime);
draw_triangle(x-16,y-16,x-16+lt_dirx,y-16+lt_diry,x+16+rt_dirx,y-16+rt_diry,0);
draw_triangle(x-16,y-16,x+16+rt_dirx,y-16+rt_diry,x+16,y-16,0);
draw_triangle(x-16,y+16,x-16+ld_dirx,y+16+ld_diry,x+16+rd_dirx,y+16+rd_diry,0);
draw_triangle(x-16,y+16,x+16,y+16,x+16+rd_dirx,y+16+rd_diry,0);
draw_triangle(x-16,y+16,x-16,y-16,x-16+lt_dirx,y-16+lt_diry,0);
draw_triangle(x-16,y+16,x-16+ld_dirx,y+16+ld_diry,x-16+lt_dirx,y-16+lt_diry,0);
draw_triangle(x+16,y+16,x+16,y-16,x+16+rd_dirx,y+16+rd_diry,0);
draw_triangle(x+16,y-16,x+16+rt_dirx,y-16+rt_diry,x+16+rd_dirx,y+16+rd_diry,0);


//read the dev mode
if global.dev_mode != 0
{
	visible = 0
}
else
{
	visible = 1
};