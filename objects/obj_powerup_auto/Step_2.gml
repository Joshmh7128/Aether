if (place_meeting(x,y,par_player))
{
global.firemode = 2

//audio_play_sound(snd_powerup_1, 1, false);

    if global.bullet_amount != 120
    {
        global.bullet_amount += 120
    }
instance_destroy()
}

