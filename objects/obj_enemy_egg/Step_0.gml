if speeda >= 0
{
speeda -= 0.5
}

move_towards_point(obj_Player.x,obj_Player.y,speeda)

//Horizontal collision
if (place_meeting(x+hsp,y,par_wall))
{
    while(!place_meeting(x+sign(hsp),y,par_wall))
    {
    x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,par_wall))
{
    while(!place_meeting(x,y+sign(vsp),par_wall))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
