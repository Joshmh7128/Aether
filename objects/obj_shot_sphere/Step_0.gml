if distance_to_object(obj_Player) < 800
{
	//if !collision_line(x,y,obj_Player.x,obj_Player.y,par_all_wall,false,true)
	{
		if control = 1
		{	
			if global.playerx < x
			{
				if hsp > -maxspeed
				{
					hsp -= 0.25;
				}
			}
			
			if global.playerx > x
			{
				if hsp < maxspeed
				{
					hsp += 0.25;
				}
			}
		}
	}
}

//collisions
if place_meeting(x+hsp*2,y,obj_melee_sphere)
{
	hsp *= -1;
	alarm[3] = 60;
}
	
if place_meeting(x+hsp,y,par_all_wall)
{
	if !alarm[0]
	alarm[0] = 60;	
}

if place_meeting(x,y,par_player)
{
	global.healthcount -= 1;
	instance_create(x,y,effect_melee_roll_die)
	instance_destroy();
}

if hp = 0 
{
	instance_create(x,y,effect_melee_roll_die)
	instance_destroy();
}

//So this gives the appearance of rolling
angle -= hsp*-2;

//Gravity
if (vsp < -10) vsp += -grav;

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

//code to create shots
if !collision_line(x,y,obj_Player.x,obj_Player.y,par_all_wall,false,true) 
{
	aim = 1;
	
	if !alarm[0]
	{
		alarm[0] = 40;
	}
}
else
{
	aim = 0;	
	
	if alarm[0]
	{
		alarm[0] = 0;
	}
}

/*
if place_meeting(x+sign(hsp),y,(par_all_wall))
{
	if vsp < 15
	vsp += -5;
}

//hey there bb