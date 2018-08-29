if global.healthcount = 5
{
	/*draw_set_color(c_black)
	draw_circle(x+30,y+44,9,false)	
	draw_circle(x,y+44,9,false)
	draw_circle(x-30,y+44,9,false)*/
	draw_set_color(c_white)
	draw_circle(x+42,y+44,6,false)	
	draw_circle(x+20,y+44,6,false)
	draw_circle(x,y+44,6,false)
	draw_circle(x-20,y+44,6,false)
	draw_circle(x-42,y+44,6,false)
}

if global.healthcount = 4
{
	/*draw_set_color(c_black)
	draw_circle(x+30,y+44,9,false)	
	draw_circle(x,y+44,9,false)
	draw_circle(x-30,y+44,9,false)*/
	draw_set_color(c_white)
	draw_circle(x+30,y+44,6,false)	
	draw_circle(x+10,y+44,6,false)
	draw_circle(x-10,y+44,6,false)
	draw_circle(x-30,y+44,6,false)
}

if global.healthcount = 3
{
	/*draw_set_color(c_black)
	draw_circle(x+30,y+44,9,false)	
	draw_circle(x,y+44,9,false)
	draw_circle(x-30,y+44,9,false)*/
	draw_set_color(c_white)
	draw_circle(x+30,y+44,6,false)	
	draw_circle(x,y+44,6,false)
	draw_circle(x-30,y+44,6,false)
}

if global.healthcount = 2
{
	/*raw_set_color(c_black)
	//draw_circle(x+30,y+44,9,false)	
	draw_circle(x,y+44,9,false)
	draw_circle(x-30,y+44,9,false)*/
	draw_set_color(c_white)
	//draw_circle(x+30,y+44,6,false)	
	draw_circle(x-30,y+44,6,false)
	draw_circle(x+30,y+44,6,false)
}

if global.healthcount = 1
{
	/*draw_set_color(c_black)
	//draw_circle(x+30,y+44,9,false)	
	//draw_circle(x,y+44,9,false)
	draw_circle(x-30,y+44,9,false)*/
	draw_set_color(c_white)
	//draw_circle(x+30,y+44,6,false)	
	//draw_circle(x,y+44,6,false)
	draw_circle(x,y+44,6,false)
}

//perlifecount = (global.healthcount / 3)*100