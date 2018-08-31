//Draw a Float triangle
//visible = 0
draw_set_color(c_black)

draw_triangle(x-16,y-256,x-16+lengthdir_x(draw_distance,point_lt),y-256+lengthdir_y(draw_distance,point_lt),x+16+lengthdir_x(draw_distance,point_rt),y-256+lengthdir_y(draw_distance,point_rt),0)
draw_triangle(x-16,y-256,x+16+lengthdir_x(draw_distance,point_rt),y-256+lengthdir_y(draw_distance,point_rt),x+16,y-256,0)
draw_triangle(x-16,y+256,x-16+lengthdir_x(draw_distance,point_ld),y+256+lengthdir_y(draw_distance,point_ld),x+16+lengthdir_x(draw_distance,point_rd),y+256+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x-16,y+256,x+16,y+256,x+16+lengthdir_x(draw_distance,point_rd),y+256+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x-16,y+256,x-16,y-256,x-16+lengthdir_x(draw_distance,point_lt),y-256+lengthdir_y(draw_distance,point_lt),0)
draw_triangle(x-16,y+256,x-16+lengthdir_x(draw_distance,point_ld),y+256+lengthdir_y(draw_distance,point_ld),x-16+lengthdir_x(draw_distance,point_lt),y-256+lengthdir_y(draw_distance,point_lt),0)
draw_triangle(x+16,y+256,x+16,y-256,x+16+lengthdir_x(draw_distance,point_rd),y+256+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x+16,y-256,x+16+lengthdir_x(draw_distance,point_rt),y-256+lengthdir_y(draw_distance,point_rt),x+16+lengthdir_x(draw_distance,point_rd),y+256+lengthdir_y(draw_distance,point_rd),0)


draw_rectangle(x-15,y-15,x+15,y+15,0)
draw_set_alpha(1);

if debug_mode = true
{
	visible = false;
}	