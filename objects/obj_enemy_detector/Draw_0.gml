if !collision_line(x,y,global.playerx,global.playery,par_wall,false,false) //or !collision_line(x,y,x+lengthdir_x(1000,direction+30),y+lengthdir_y(1000,direction+30),par_wall,false,false)or !collision_line(x,y,x+lengthdir_x(1000,direction-30),y+lengthdir_y(1000,direction-30),par_wall,false,false)
{
draw_sprite_ext(spr_detect,0,x,y,1,1,direction,c_white,1)
draw_set_color(c_white)
draw_set_alpha(1.0)
draw_triangle_color(x,y,x+lengthdir_x(check_length,direction+30),y+lengthdir_y(check_length,direction+30),x+lengthdir_x(check_length,direction-30),
y+lengthdir_y(check_length,direction-30),c_white,c_white,c_white,false)
draw_set_alpha(0.75)
draw_triangle_color(x,y,x+lengthdir_x(check_length+15,direction+30),y+lengthdir_y(check_length+15,direction+30),x+lengthdir_x(check_length+15,direction-30),
y+lengthdir_y(check_length+15,direction-30),c_white,c_white,c_white,false)
draw_set_alpha(0.50)
draw_triangle_color(x,y,x+lengthdir_x(check_length+30,direction+30),y+lengthdir_y(check_length+30,direction+30),x+lengthdir_x(check_length+30,direction-30),
y+lengthdir_y(check_length+30,direction-30),c_white,c_white,c_white,false)
draw_set_alpha(0.25)
draw_triangle_color(x,y,x+lengthdir_x(check_length+45,direction+30),y+lengthdir_y(check_length+45,direction+30),x+lengthdir_x(check_length+45,direction-30),
y+lengthdir_y(check_length+45,direction-30),c_white,c_white,c_white,false)
draw_set_alpha(1.0)
}

if global.dev_mode != 0
{
	draw_line(x,y,x+lengthdir_x(1000,direction),y+lengthdir_y(1000,direction))
}