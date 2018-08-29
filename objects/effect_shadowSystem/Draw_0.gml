draw_set_alpha(1)
if (point_distance(plX,plY,x,y) < lightRad) 
{ 
	draw_line(plX,plY,point1X,point1Y)
	draw_line(plX,plY,point2X,point2Y)
	draw_line(point1X,point1Y,point2X,point2Y)
	
	draw_circle(point1X,point1Y,5,0)
	draw_circle(point2X,point2Y,5,0)
   
	draw_circle(point3X,point3Y,5,0)
	draw_circle(point4X,point4Y,5,0)
   
//	draw_triangle(point1X,point1Y,point2X,point2Y,point3X,point3Y,0)
//	draw_triangle(point2X,point2Y,point3X,point3Y,point4X,point4Y,0)
}