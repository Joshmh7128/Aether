///scr_draw_laser(x,y,angle,direction);
var xx=argument[0];
var yy=argument[1];
var angle=argument[2];

var length=0;

while(!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),par_wall,false,true)) && length < 1000
	{
		length++;
	}

draw_line(x,y,xx,yy)

draw_sprite_ext(spr_laser_red,0,xx,yy,length,1,angle,c_white,1);
draw_sprite(spr_lazer_end,1,xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle))

/*
while(!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_wall,false,true))
	{
		length++;
	}

draw_sprite_ext(spr_laser_red,0,xx,yy,length,1,angle,c_white,1);