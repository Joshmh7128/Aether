draw_sprite_stretched_ext(spr_background_color_blue,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,blue_alpha)
draw_sprite_stretched_ext(spr_background_color_maroon,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,maroon_alpha)
draw_sprite_stretched_ext(spr_background_color_green,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,green_alpha)
draw_sprite_stretched_ext(spr_background_color_red,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,red_alpha)
draw_sprite_stretched_ext(spr_background_color_cyan,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,cyan_alpha)
draw_sprite_stretched_ext(spr_background_color_cyan,1,camera_main.x-1500,camera_main.y-1500,3000,3000,c_white,cyan_alpha)

if current_color = "cyan" && cyan_alpha < 1
{
	cyan_alpha += 0.05;
	
	if blue_alpha > 0
	{
		blue_alpha -= 0.05;
	}
	
	if maroon_alpha > 0
	{
		maroon_alpha -= 0.05
	}

	if green_alpha > 0
	{
		green_alpha -= 0.05
	}
	
	if red_alpha > 0
	{
		red_alpha -= 0.05
	}
	
}

if current_color = "blue" && blue_alpha < 1
{
	blue_alpha += 0.05;
	
	if maroon_alpha > 0
	{
		maroon_alpha -= 0.05
	}
	
	if green_alpha > 0
	{
		green_alpha -= 0.05
	}
	
	if red_alpha > 0
	{
		red_alpha -= 0.05
	}
	
	if cyan_alpha > 0
	{
		cyan_alpha -= 0.05
	}
}

if current_color = "maroon" && maroon_alpha < 1
{
	maroon_alpha += 0.05;
	
	if blue_alpha > 0
	{
		blue_alpha -= 0.05;
	}
	
	if green_alpha > 0
	{
		green_alpha -= 0.05
	}

	if red_alpha > 0
	{
		red_alpha -= 0.05
	}
	
	if cyan_alpha > 0
	{
		cyan_alpha -= 0.05
	}
}

if current_color = "green" && green_alpha < 1
{
	green_alpha += 0.05;
	
	if blue_alpha > 0
	{
		blue_alpha -= 0.05;
	}
	
	if maroon_alpha > 0
	{
		maroon_alpha -= 0.05
	}

	if red_alpha > 0
	{
		red_alpha -= 0.05
	}
	
	if cyan_alpha > 0
	{
		cyan_alpha -= 0.05
	}
}

if current_color = "red" && red_alpha < 1
{
	red_alpha += 0.05;
	
	if blue_alpha > 0
	{
		blue_alpha -= 0.05;
	}
	
	if maroon_alpha > 0
	{
		maroon_alpha -= 0.05
	}

	if green_alpha > 0
	{
		green_alpha -= 0.05
	}
	
	if cyan_alpha > 0
	{
		cyan_alpha -= 0.05
	}
	
}

if current_color = 7 && black_alpha < 1
{
	black_alpha += 0.05;
}





