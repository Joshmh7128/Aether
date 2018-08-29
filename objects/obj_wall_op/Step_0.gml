//layer adjustment 
/*
checkdir = point_direction(x,y,global.playerx,global.playery);
target = collision_line(x,y,x+lengthdir_x(1280,checkdir),y+lengthdir_y(1280,checkdir),par_player,true,true)

//target
if instance_exists(target)
{
    if not collision_line(x,y-32,target.x,target.y,obj_wallB,true,true)
    {
        seen = true;
    }
    else
    {
        seen = false;
    }
}
else
{
    seen = false;
}
	
	
if seen = true
{
depth = -999
}

if seen = false
{
depth = -996
}