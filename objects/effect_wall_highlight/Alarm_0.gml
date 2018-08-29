//image_alpha = alpha;
if !place_meeting(x,y,par_wall)
{
	instance_destroy();	
}

if draw_mode = 1 or 2 or 3 or 4
{
	
	if point_distance(x,y,global.playerx,global.playery) < range //&& !collision_line(x,y,global.playerx,global.playery,effect_wall_highlight,false,true)
	{
		if alpha <= 1
		alpha += 0.05;
		visible = true;
	}

	if point_distance(x,y,global.playerx,global.playery) > range
	{
		if alpha >= 0
		alpha -= 0.025;	
	}
	
	if alpha = 0
	{
		visible = false;
	}	
	
}

if draw_mode = 5
{
	if point_distance(x,y,global.playerx,global.playery) < range //&& !collision_line(x,y,global.playerx,global.playery,effect_wall_highlight,false,true)
	{
		if alpha <= 1
		alpha += 0.008;
		visible = true;
	}

	if point_distance(x,y,global.playerx,global.playery) > range
	{
		if alpha >= 0
		alpha -= 0.025;	
	}
	
	if alpha = 0
	{
		visible = false;
	}	
}

alarm[0] = 3
/*
if draw_mode = 2
{
	if point_distance(x,y,global.playerx,global.playery) < range
	{
		if alpha <= 0.7
		alpha += 0.05;
	}

	if point_distance(x,y,global.playerx,global.playery) > range
	{
		if alpha >= 0
		alpha -= 0.025;	
	}
	
	if alpha = 0
	{
		visible = false;
	}	
}