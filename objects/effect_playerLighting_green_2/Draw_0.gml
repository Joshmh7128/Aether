//draw the black LOS effect
draw_set_alpha(1);
draw_set_color(c_black);
draw_triangle(x-16,y-16,x-16+lt_dirxa,y-16+lt_dirya,x+16+rt_dirxa,y-16+rt_dirya,0);
draw_triangle(x-16,y-16,x+16+rt_dirxa,y-16+rt_dirya,x+16,y-16,0);
draw_triangle(x-16,y+16,x-16+ld_dirxa,y+16+ld_dirya,x+16+rd_dirxa,y+16+rd_dirya,0);
draw_triangle(x-16,y+16,x+16,y+16,x+16+rd_dirxa,y+16+rd_dirya,0);
draw_triangle(x-16,y+16,x-16,y-16,x-16+lt_dirxa,y-16+lt_dirya,0);
draw_triangle(x-16,y+16,x-16+ld_dirxa,y+16+ld_dirya,x-16+lt_dirxa,y-16+lt_dirya,0);
draw_triangle(x+16,y+16,x+16,y-16,x+16+rd_dirxa,y+16+rd_dirya,0);
draw_triangle(x+16,y-16,x+16+rt_dirxa,y-16+rt_dirya,x+16+rd_dirxa,y+16+rd_dirya,0);

//read the dev mode
if global.dev_mode != 0
{
	visible = 0
}
else
{
	visible = 1
};