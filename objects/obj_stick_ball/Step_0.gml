if place_meeting(x,y,par_wall)
{
speed = 0
}

if place_meeting(x,y,obj_bullet)
{
hp -= 1
}

//Sprite Control

if (hp >= 3)
{
sprite_index = spr_green_ball;
}

if (hp == 2)
{
sprite_index = spr_yellow_ball;
}

if (hp <= 1)
{
sprite_index = spr_red_ball;
}

if (hp <= 0)
{
instance_destroy();
}

