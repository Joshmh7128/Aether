draw_set_color(c_white)
draw_self()
draw_set_color(c_red)

var long;

long = length;

//draw_line(x,y,x+lengthdir_x(length,angle),y+lengthdir_y(length,angle))
draw_sprite_ext(spr_laser_red,0,x,y,long,1,angle,c_white,1);

draw_set_color(c_white)