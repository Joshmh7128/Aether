//determine direction, targets, ect
checkdir = point_direction(x,y,global.playerx,global.playery);
target = collision_line(x,y,x+lengthdir_x(checkrange,checkdir),y+lengthdir_y(checkrange,checkdir),par_player,true,true)

//target
if instance_exists(target)
{
    if not collision_line(x,y,target.x,target.y,par_wall,true,true)
    {
        seen = false;
    }
    
    if collision_line(x,y,target.x,target.y,par_wall,true,true)
    {
        seen = true;
    }
}
else
{
seen = true;
}
   
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

//Face the player

image_angle = point_direction(x,y,obj_Player.x,obj_Player.y);

if (hp <= 0)
{
instance_create(x,y,effect_bit_spawn)
instance_create(x,y,obj_enemy_break_up)
instance_create(x,y,obj_enemy_break_down)
instance_create(x,y,obj_enemy_break_left)
instance_create(x,y,obj_enemy_break_right)
instance_destroy();
}

//Shoot the player
if seen = true
{ 
alarm[0] = 30
}



