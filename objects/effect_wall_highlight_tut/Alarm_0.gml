if tut_stage.stage <= 15
{
	if point_distance(x,y,global.playerx,global.playery) < range
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
else
{
	visible = true
}