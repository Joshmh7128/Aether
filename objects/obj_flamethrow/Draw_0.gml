draw_sprite_ext(spr_flamethrow,spr_flamethrow,x,y,1,1,rotate,c_white,alpha)
draw_set_alpha(alpha2)

if place_meeting(x,y,par_player)
{
	alpha2 = 0
}

if !place_meeting(x,y,par_player)
{
	alpha2 = 1
}