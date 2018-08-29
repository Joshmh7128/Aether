x = global.playerx
y = global.playery-200
/*
slider_arrow_music.x = x+64
slider_arrow_music.y = y+64
slider_arrow_sfx.x = x-64
slider_arrow_sfx.y = y+64
slider_sfx_vol.x = x-64
slider_sfx_vol.y = y+64
slider_music_vol.x = x+64
slider_music_vol.y = y+64
*/
if keyboard_check_pressed(vk_escape)
{
/*
slider_arrow_music.x = -200;
slider_arrow_music.y = -200;
slider_arrow_sfx.x	 = -200;
slider_arrow_sfx.y	 = -200;
slider_sfx_vol.x	 = -200;
slider_sfx_vol.y	 = -200;
slider_music_vol.x	 = -200;
slider_music_vol.y	 = -200;
*/
instance_destroy();
}