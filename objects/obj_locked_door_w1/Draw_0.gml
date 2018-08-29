draw_self()
draw_set_color(c_white)
draw_set_font(font_5)
draw_text(x,y+160, string(amount) + " / " + string(amount_max));
draw_sprite_ext(spr_key_part,1,x,y,1,1,rot,c_white,1)
draw_healthbar(x-64,y-128,x+64,y+128,current_amount,c_black,c_white,c_white,3,false,false)