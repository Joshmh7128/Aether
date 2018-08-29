move_bounce_solid(false)

if speed > 0 
{
	speed -= 0.1;
}	

if spin > 0
{
	spin -= 0.1;	
}
image_angle += spin;

if place_meeting(x,y+1,par_all_wall)
{	
	grav = 0;
	grav_inc = 0;
	spin = 0;
}
