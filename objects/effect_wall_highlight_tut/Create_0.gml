visible = 1
alpha = 0;
range = 200;
draw_mode = 1;
// 1 = wall, 2 = green, 3 dark gray, 4 red, 5 black
depth = -1005

if place_meeting(x,y,obj_wall) or place_meeting(x,y,obj_wall_long_h) or place_meeting(x,y,obj_wall_med_h) or place_meeting(x,y,obj_wall_long_v) or place_meeting(x,y,obj_wall_med_v)
{
	draw_mode = 1;
}

if place_meeting(x,y,obj_wallB)
{
	draw_mode = 2;
}

if place_meeting(x,y,obj_wall_jumpthrough)
{
	draw_mode = 3;
}

if place_meeting(x,y,obj_wall_fallthrough)
{
	draw_mode = 4;
}

if place_meeting(x,y,boss_wall)
{
	draw_mode = 1;
}

if place_meeting(x,y,obj_wall_white)
{
	draw_mode = 5;	
}

alarm[0] = 2;