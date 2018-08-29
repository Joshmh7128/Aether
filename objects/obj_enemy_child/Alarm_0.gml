if !collision_line(x,y,global.playerx,global.playery,par_path,false,false)
{
	plan(global.playerx, global.playery-16);
	alarm[0] = 15
}

if collision_line(x,y,global.playerx,global.playery,par_path,false,false)
{
	plan(spawn_x,spawn_y);
	alarm[0] = 15
}