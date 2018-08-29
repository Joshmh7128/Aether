//determine direction, targets, ect
checkdir = point_direction(x,y,global.playerx,global.playery);
target = collision_line(x,y,x+lengthdir_x(checkrange,checkdir),y+lengthdir_y(checkrange,checkdir),par_player,true,true)

//target
if instance_exists(target)
{
    if !collision_line(x,y-32,target.x,target.y,par_all_wall,true,true)
    {
        seen = true;
    }
    else
    {
        seen = false;
    }
}

//All the other stuff for movement and ect
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

//move to player
if (seen = true) && (x != global.playerx) && (!place_meeting(x,y,par_enemy)) && mode = "move"
{
    if global.playerx >= x+20
    {
		hsp = 2
    }
    
    if global.playerx <= x-20
    {
		hsp = -2
    }
	
	if round(global.playerx) = round(x)
    {
		hsp = 0
	}
}

/*
if distance_to_point(obj_Player.x,obj_Player.y) < 30
{
	alarm[0] = 1;
	//alarm[1] = 1;
}
*/

//Jump to player
if (place_meeting(x,y+1,par_all_wall))
{
    vsp = jumpactive * -jumpspeed;
}

if (place_meeting(x+4,y,par_all_wall))
{
	jumpactive = 1;
}


if (place_meeting(x-4,y,par_all_wall))
{
	jumpactive = 1;
}

if !(place_meeting(x+4,y,par_all_wall)) && !(place_meeting(x-4,y,par_all_wall))
{
	jumpactive = 0;
}

/*
if !(place_meeting(x+2,y,par_all_wall)) or !(place_meeting(x-2,y,par_all_wall))
{
jumpactive = 0
}
*/
//Vertical floor collision 

if (place_meeting(x,y+1,par_all_wall))
{
	grounded = 1;
}
else
{
	grounded = 0;
}

//Jump if wall in the way

//stop moving if you cant see the player
if (seen = false)
{
	hsp = 0
}

//sprite control
if global.playerx < x
{
	image_xscale = -1
	facing = -1;
}
	else
{
	image_xscale = 1
	facing = 1;
}


//Sprite Control

if (hp >= 3) && (vsp = 0 && hsp = 0)
{
	sprite_index = spr_enemy_idle;
}

if (hp == 2) && (vsp = 0 && hsp = 0)
{
	sprite_index = spr_enemy_idle2;
}

if (hp <= 1) && (vsp = 0 && hsp = 0)
{
	sprite_index = spr_enemy_idle3;
}

if (hp >= 3) && (hsp != 0)
{
	sprite_index = spr_enemy_run1;
}

if (hp == 2) && (hsp != 0)
{
	sprite_index = spr_enemy_run2;
}

if (hp <= 1) && (hsp != 0)
{
	sprite_index = spr_enemy_run3;
}

if (hp <= 0)
{
	instance_create(x,y,effect_bit_spawn);
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	instance_destroy();
}