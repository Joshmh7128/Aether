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

hp_draw = (hp / hp_max) * 100;





