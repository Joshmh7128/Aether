//Gravity
if (vsp < 10) vsp += grav;

//Horizontal collision
if (place_meeting(x+hsp,y,(par_all_wall)))
{
    while(!place_meeting(x+sign(hsp),y,par_all_wall))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,(par_all_wall)))
{
    while(!place_meeting(x,y+sign(vsp),par_all_wall))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
angle += 1;

if place_meeting(x,y,par_player)
{
	tip_draw = 1;
}
else
{
	tip_draw = 0;	
}

//run this script to create a new object
dropScript();

//set per object
if place_meeting(x,y,par_player) && keyboard_check_pressed(ord("E"))
{
	global.burst = true;
	global.special = special;
	instance_destroy();
}