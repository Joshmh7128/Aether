draw_self()
if global.invert = 1
{
	shader_set(shdr_invert)
}
draw_self()
draw_healthbar(x-40,y-50,x+40,y-60,tp_hold_bar,c_white,c_white,c_fuchsia,0,0,0)
shader_reset()