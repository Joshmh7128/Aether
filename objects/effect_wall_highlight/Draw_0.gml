//draw outlines depending on room and wall
if draw_mode = 1 //&& !collision_line(x,y,global.playerx,global.playery,effect_wall_highlight,false,true)
{
	//if global.special = "shotgun" or global.special = "none"
	//{
		draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_navy,alpha)
	//}
/*
	if global.special = "jetpack"
	{
		draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_fuchsia,alpha)
	}

	if global.special = "gravity"
	{
		draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_teal,alpha)
	}

	if global.special = "none"
	{
		draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_red,alpha)
	}
}
*/
if draw_mode = 2
{
	draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_white,alpha-0.75)
	if !place_meeting(x,y,obj_wallB)
	{
		instance_destroy()	
	}
}
}
/*
if draw_mode = 3
{
	draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_dkgray,alpha)
}

if draw_mode = 4
{
	draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_red,alpha)
}

if draw_mode = 5
{
	draw_sprite_ext(spr_wall_highlight,1,x,y,1,1,0,c_black,alpha)
}

//Dev Draw for Distance Lines
if global.dev_mode != 0 && alpha > 0
{
	draw_set_color(c_aqua)
	draw_set_alpha(0.25)
	draw_line(x,y,global.playerx,global.playery)
}
/*
if tut_stage.stage < 15
{
	alpha = 0;
}