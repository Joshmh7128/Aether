//Horizontal collision
if (place_meeting(x+hspeed,y,par_wall))
{
    while(!place_meeting(x+sign(hspeed),y,par_wall))
    {
    x += sign(hspeed);
    }
    hspeed = 0;
	
}
//Vertical collision
if (place_meeting(x,y+vspeed,par_wall))
{
    while(!place_meeting(x,y+sign(vspeed),par_wall))
    {
    y += sign(vspeed);
    }
    vspeed = 0;
}

if !collision_line(x, y,global.playerx, global.playery, par_wall, false, false)
{

if object_exists(obj_Player)
{
	move_towards_point(global.playerx, global.playery, speed)

	if speed <= 0.5
	{
	speed += 0.1
	}
}

if collision_circle(x,y,300,par_player,false,true)
{
move_towards_point(global.playerx, global.playery, speed)

	if speed <= 3
	{
	speed += 0.1
	}
}


if collision_circle(x,y,200,par_player,false,true)
{
move_towards_point(global.playerx, global.playery, speed)

	if speed <= 7
	{
	speed += 0.5
	}
}


if collision_circle(x,y,150,par_player,false,true)
{
move_towards_point(global.playerx, global.playery, speed)
	
	if speed <= 14
	{
	speed += 0.5
	}
}

if collision_circle(x,y,100,par_player,false,true)
{
move_towards_point(global.playerx, global.playery, speed)
	
	if speed <= 30
	{
	speed += 1
	}
}
}

instance_create(x,y,obj_bit_trail)

if place_meeting(x,y,par_player)
{
	global.upgrade_point_amount += 1;
	obj_gunfire.charge += 20;
	instance_destroy()
}

