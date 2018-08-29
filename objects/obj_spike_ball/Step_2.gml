if (point_in_circle(x,y,camera_main.x, camera_main.y, 1200))
{
    visible=true;
}
else
{
    visible=false;
}

if place_meeting(x,y,par_wall)
{
	vspeed *= -1
	hspeed *= -1
}

angle += 10;