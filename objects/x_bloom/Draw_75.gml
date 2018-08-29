if global.shaders = 1
{
shader_set(shdr_bloom);
shader_set_uniform_f(bloomIntensity, 0.5); //0 = off, 1 = a bit, 80 = extremely intense
//shader_set_uniform_f(bloomblurSize, ((window_mouse_get_x()-250)/1000)); // usually something like 1/512 (0.001)
shader_set_uniform_f(bloomblurSize,1/512);
draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
shader_reset();
}

if global.shaders != 1
{
shader_set(shdr_bloom);
shader_set_uniform_f(bloomIntensity, 0); //0 = off, 1 = a bit, 80 = extremely intense
//shader_set_uniform_f(bloomblurSize, ((window_mouse_get_x()-250)/1000)); // usually something like 1/512 (0.001)
//shader_set_uniform_f(bloomblurSize, 0.001);
draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height());
shader_reset();
}
/*
if room = room_start or room = room_tutorial
{
	global.shaders = 0
}
