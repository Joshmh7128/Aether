draw_roundrect_color(camera_main.x-950,camera_main.y-530,camera_main.x-850,camera_main.y-440,c_black,c_black,false)
draw_set_color(c_white)
draw_sprite_ext(spr_secret_white,1,round(camera_main.x-920),round(camera_main.y-500),1,1,rot,c_white,1)
draw_sprite_ext(spr_coin,1,round(camera_main.x-920),round(camera_main.y-470),1,1,rot,c_white,1)
rot += 1;
draw_set_font(font_3)
draw_set_color(c_white)
draw_text(round(camera_main.x-880),round(camera_main.y-515),string(global.lifecount))
draw_text(round(camera_main.x-880),round(camera_main.y-485),string(global.upgrade_point_amount))