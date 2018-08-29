with (par_dynamic)
{
	var dirx,diry;
	dirx = lengthdir_x(other.ex_power,point_direction(x,y,other.x,other.y)) * -1;
	diry = lengthdir_y(other.ex_power,point_direction(x,y,other.x,other.y)) * -1;

	physics_apply_impulse(x,y,dirx,diry,);
}

instance_destroy();