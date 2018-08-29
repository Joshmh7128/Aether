if global.shaders = 1
{
	shader_set(sh_aberration);
	shader_set_uniform_f(global.dis_u, global.dis);
	draw_self()
	shader_reset();
}
else
{
	draw_self()	
}