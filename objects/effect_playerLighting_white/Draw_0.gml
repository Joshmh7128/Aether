//Draw a Float triangle
//visible = 0
draw_set_color(c_gray)

draw_triangle(x,y,x+lengthdir_x(draw_distance,point_lt),y+lengthdir_y(draw_distance,point_lt),x+32+lengthdir_x(draw_distance,point_rt),y+lengthdir_y(draw_distance,point_rt),0)
draw_triangle(x,y,x+32+lengthdir_x(draw_distance,point_rt),y+lengthdir_y(draw_distance,point_rt),x+32,y,0)
draw_triangle(x,y+32,x+lengthdir_x(draw_distance,point_ld),y+32+lengthdir_y(draw_distance,point_ld),x+32+lengthdir_x(draw_distance,point_rd),y+32+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x,y+32,x+32,y+32,x+32+lengthdir_x(draw_distance,point_rd),y+32+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x,y+32,x,y,x+lengthdir_x(draw_distance,point_lt),y+lengthdir_y(draw_distance,point_lt),0)
draw_triangle(x,y+32,x+lengthdir_x(draw_distance,point_ld),y+32+lengthdir_y(draw_distance,point_ld),x+lengthdir_x(draw_distance,point_lt),y+lengthdir_y(draw_distance,point_lt),0)
draw_triangle(x+32,y+32,x+32,y,x+32+lengthdir_x(draw_distance,point_rd),y+32+lengthdir_y(draw_distance,point_rd),0)
draw_triangle(x+32,y,x+32+lengthdir_x(draw_distance,point_rt),y+lengthdir_y(draw_distance,point_rt),x+32+lengthdir_x(draw_distance,point_rd),y+32+lengthdir_y(draw_distance,point_rd),0)


//draw_rectangle(x-15,y-15,x+16,y+16,0)
draw_set_alpha(1);

if global.dev_mode != 0
{
visible = 0
}
else
{
visible = 1
};