if place_meeting(x,y,par_wall)
{
	vspeed *= -1
	hspeed *= -1
}

angle += 1;

if y < 2500
{
	instance_destroy();	
}

if boss_control.boss_state = 3
{
	instance_destroy()	
}