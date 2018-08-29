//determine direction, targets, ect

checkdir = point_direction(x,y,global.playerx,global.playery);
target = collision_line(x,y,x+lengthdir_x(checkrange,checkdir),y+lengthdir_y(checkrange,checkdir),obj_Player,false,true)

//target
if instance_exists(target)
{
    if collision_line(x,y,target.x,target.y,par_wall,true,true)
    {
        seen = false;
    }
    
	if !collision_line(x,y,target.x,target.y,par_wall,true,true)
	{
        seen = true;
    }
}


//Sprite Control

if (hp >= 3)
{
sprite_index = spr_turret;
}

if (hp == 2)
{
sprite_index = spr_turret2;
}

if (hp <= 1)
{
sprite_index = spr_turret3;
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

//Face the player

image_angle = point_direction(x,y,global.playerx,global.playery);

//follow and shoot the player
if (seen = true) && (y < global.playery)
{
		vspeed = 8.5
}
