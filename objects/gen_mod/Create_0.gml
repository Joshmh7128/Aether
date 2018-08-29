//global.gen_stage += 1;

if global.gen_stage = 0
{
	//starting area and drop
	instance_create(x,y+256,obj_wall_long_v)
	instance_create(x,y+768,obj_wall_long_v)
	instance_create(x+650,y+256,obj_wall_long_v)
	instance_create(x+650,y+768,obj_wall_long_v)
	instance_create(x+650,y-256,obj_wall_long_v)
	instance_create(x+650,y-256,obj_wall_long_v)
	instance_create(x+380,y-352,obj_wall_long_h)
	instance_create(x+300,y-352,obj_wall_long_h)
}