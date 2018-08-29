if global.dev_mode != 0
{
draw_set_color(c_white)
draw_set_font(font_1)
draw_text(128,128, fps)
draw_text(128,138, fps_real)
draw_text(128,158, obj_Player.grav)
effect_background.visible = false
//draw_text(150,150, snd_main_music.gain)
}