#region //Get the player's input
key_right   =   keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0.5)
key_left    =   keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < -0.5)
key_jump    =   keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1)) || gamepad_button_check_pressed(0,gp_shoulderlb)
key_up		=	keyboard_check(ord("W"));
key_down	=	keyboard_check(ord("S"));
#endregion
#region //React to inputs
#region //basic movment
if (key_left) && (hsp > -maxhsp) && (!key_right)
{
	hsp -= maxhsp;
}
else
if (hsp < 0) && !(key_right) && !(key_left) 
{
	hsp += 1;
}


if (key_right) && (hsp < maxhsp) && (!key_left)
{
	hsp += maxhsp;
}
else
if (hsp > 0) && !(key_right) && !(key_left) 
{
	hsp -= 1;
}

#region //Define Ladder & use ladder
if key_up || key_down
{
	if place_meeting(x,y,obj_ladder)
	{
	ladder = 1
	}
}
#region //Use Ladders
//ladders
if (ladder = 1)
{
	vsp = 0;

	if key_up 
		{
			vsp = -5
		}
	
	if key_down
		{
			vsp = 5
		}

	if !place_meeting(x,y,obj_ladder)
		{
			ladder = 0
		}
	
	if key_jump 
	{
		ladder = 0
	}

	if ladder = 1 && !key_up && !key_down
	{
		vsp -= grav
	}
	
	
}



#endregion
#endregion
if (key_right) && (key_left) or (!key_right) && (!key_left)
{
	hsp = 0 
}

#region //Define Gravity states
if key_down
{
	grav = 2
}
if !key_down
{
	grav = 0.7
}

if grav_state = 1
{
	if vsp < maxgrav
	{	
		vsp += grav;
	}
}

if grav_state = -1
	if vsp > -maxgrav
	{
		vsp -= grav;	
	}	
	
grav_sign = sign(grav)

if (place_meeting(x,y+grav_state,par_all_wall))
{  
    jump_amount = maxjumps
	jetpack_amount = max_jetpack
	wall_jump_amount = 1;
}

if global.special = "triple_jump"
{
	maxjumps = 3;	
}
else
{
	maxjumps = 2;
}

#endregion

if (key_jump) && !(jump_amount > 0)
{
	jump_amount += 0;
}

#region //Carry hsp
var hsp_final = hsp + hsp_carry;
hsp_carry = 0;
#endregion

if (key_jump) && (jump_amount > 0) && (grav != 0)
{
	vsp = -jumpspeed;
	jump_amount -= 1;
	instance_create(x,y,obj_jump_trail1)
	instance_create(x,y,obj_jump_trail2)
	instance_create(x,y,obj_jump_trail3)
}
#endregion
#region //Dash special
if global.special = "dash"
{
	if mouse_check_button_pressed(mb_right) && mouse_x > x && dash_determine > 0
	{
		hsp += 40
		alarm[1] = 3;
		alarm[2] = 30;
		dash_determine -= 1;
		instance_create(x,y,obj_run_trail)
		instance_create(x,y,obj_run_trail)
		instance_create(x,y,obj_run_trail)
	}
	
	if mouse_check_button_pressed(mb_right) && mouse_x < x && dash_determine > 0
	{
		hsp -= 40
		alarm[1] = 3;
		alarm[2] = 30;
		dash_determine -= 1;
		instance_create(x,y,obj_run_trail)
		instance_create(x,y,obj_run_trail)
		instance_create(x,y,obj_run_trail)
	}

	/*
	if mouse_check_button_released(mb_right)
	{
		hsp = 0
	}*/
}
#endregion
#endregion
#region //Wall jump special
if place_meeting(x+1,y,par_all_wall) or place_meeting(x-1,y,par_all_wall)
{
	if grav != 0 && global.special = "wall_jump"
	{
		if key_jump
		{
			vsp = -jumpspeed;
			wall_jump_amount -= 1;
			instance_create(x,y,obj_jump_trail1)
			instance_create(x,y,obj_jump_trail2)
			instance_create(x,y,obj_jump_trail3)
		}
	}
}
#endregion
#region //Collissions
//Horizontal collision
if (place_meeting(x+hsp_final,y,par_all_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,par_all_wall))
    {
    x += sign(hsp_final);
    }
    hsp_final = 0;
	hsp = 0;
}
x += hsp_final;

//Vertical collision
if (place_meeting(x,y+vsp,par_all_wall))
{
    while(!place_meeting(x,y+sign(vsp),par_all_wall))
    {
    y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Death Collision
if (place_meeting(x,y,par_Dcollide))
{
    global.healthcount -= 3
	instance_create_depth(x,y,depth-200,effect_hurt)
}

#endregion
#region //Body positions
    global.playerx = x;
    global.playery = y;

//Determine Head position

    global.headx = global.playerx;
    global.heady = global.playery - 20;
#endregion
#region //Sprite Control
#region //Torso Control
if (vsp = 0 && hsp = 0)
{
	if global.player_skin = 1
	{
		sprite_index = spr_playerIdle;
	}
	
	if global.player_skin = 2
	{
		sprite_index = spr_playerIdle_orig;
	}
	
	if global.player_skin = 3
	{
		sprite_index = spr_playerIdle_purple;
	}
	
	if global.player_skin = 4
	{
		sprite_index = spr_playerIdle_electric;
	}
	
	if global.player_skin = 5
	{
		sprite_index = spr_playerIdle_splinter;
	}
	
	if global.player_skin = 6
	{
		sprite_index = spr_playerIdle_cyclops;
	}

	image_yscale = sign(grav_state)
}
#endregion
#region //Leg Control (Running)
if (hsp > 0)
{
	if global.player_skin = 1
	{
		sprite_index = spr_playerRun;
	}
	
	if global.player_skin = 2
	{
	    sprite_index = spr_playerRun_orig;
	}
	
	if global.player_skin = 3
	{
	    sprite_index = spr_playerRun_purple;
	}
	
	if global.player_skin = 4
	{
		sprite_index = spr_playerRun_electric;
	}
	
	if global.player_skin = 5
	{
		sprite_index = spr_playerRun_splinter;
	}

	if global.player_skin = 6
	{
		sprite_index = spr_playerRun_cyclops;
	}
	
	image_xscale = 1;
	image_yscale = sign(grav_state)
}


if (hsp < 0)
{
    
	if global.player_skin = 1
	{
		sprite_index = spr_playerRun;
	}
	
	if global.player_skin = 2
	{
		sprite_index = spr_playerRun_orig;
	}
	
	if global.player_skin = 3
	{
		sprite_index = spr_playerRun_purple;
	}
	
	if global.player_skin = 4
	{
		sprite_index = spr_playerRun_electric;
	}
	
	if global.player_skin = 5
	{
		sprite_index = spr_playerRun_splinter;
	}
	
	if global.player_skin = 6
	{
		sprite_index = spr_playerRun_cyclops;
	}
	
	image_xscale = -1;
	image_yscale = sign(grav_state)
}
#endregion
#region //Leg Control (Release, Idle)
if keyboard_check_released(ord("A")) 
{
	
	if global.player_skin = 1
	{
		sprite_index = spr_playerIdle;
	}
	
	if global.player_skin = 2
	{
		sprite_index = spr_playerIdle_orig;
	}
	
	if global.player_skin = 3
	{
		sprite_index = spr_playerIdle_purple;
	}

	if global.player_skin = 4
	{
		sprite_index = spr_playerIdle_electric;
	}
	
	if global.player_skin = 5
	{
		sprite_index = spr_playerIdle_splinter;
	}
	
	if global.player_skin = 6
	{
		sprite_index = spr_playerIdle_cyclops;
	}

    image_xscale = -1;
	image_yscale = sign(grav_state)
}

if keyboard_check_released(ord("D")) 
{

	if global.player_skin = 1
	{
		sprite_index = spr_playerIdle;
	}
	
	if global.player_skin = 2
	{
		sprite_index = spr_playerIdle_orig;
	}
	
	if global.player_skin = 3
	{
		sprite_index = spr_playerIdle_purple;
	}
	
	if global.player_skin = 4
	{
		sprite_index = spr_playerIdle_electric;
	}

	if global.player_skin = 5
	{
		sprite_index = spr_playerIdle_splinter;
	}
	
		if global.player_skin = 6
	{
		sprite_index = spr_playerIdle_cyclops;
	}

    image_xscale = 1;
	image_yscale = sign(grav_state)
}
#endregion
#region //Jumps
if (vsp > 0) or (vsp < 0) && !place_meeting(x,y,par_wall)
{
 	if global.player_skin = 1
	{
		sprite_index = spr_jump;
	}
	
	if global.player_skin = 2
	{
		sprite_index = spr_jump_orig;
	}
	
	if global.player_skin = 3
	{
		sprite_index = spr_jump_purple;
	}

	if global.player_skin = 4
	{
		sprite_index = spr_jump_electric;
	}
	
	if global.player_skin = 5
	{
		sprite_index = spr_jump_splinter;
	}

	if global.player_skin = 6
	{
		sprite_index = spr_jump_cyclops;
	}

	image_yscale = sign(grav_state)	
}
#endregion
#region //Mouse Color Controller
if place_meeting(x,y,obj_wall_white)
{
	obj_mouse.col_mode = 1;
}

if place_meeting(x,y,obj_wall)
{
	obj_mouse.col_mode = 0;
}
#endregion
#endregion
#region //Enemy Collisions & Checkpoint Event
//Enemy collision
if place_meeting(x,y,par_hurt)
{
    //global.healthcount -= 1;
	instance_create(x,y,effect_heavyshake)
	instance_create_depth(x,y,depth-200,effect_hurt)
}//this is usually done within the bullet's end step to make for more accurate collisions
/*
//the old ways
if place_meeting(x,y,par_mega_hurt)
{
    global.healthcount = 0;
}
*/
if global.healthcount <= 0
{
	if room = room_cyan_boss
	{
		instance_create(x,y,boss_heal)
	}
	
	if !alarm[0] && death_anim = 0
	{
		alarm[0] = 1;
	}
}
/*
if place_meeting(x,y,par_enemy)
{
    global.healthcount -= 1
}*/
#endregion
#region //GUI (almost nothing here)
if keyboard_check_direct(ord("Q"))
{
	global.orbshow = 1
}
else
{
	global.orbshow = 0
}
#endregion
#region //Gravity Special
//Gravity Special 
if global.special = "gravity"
{
	if mouse_check_button_pressed(mb_right) && jump_amount > 0
	{
		grav_state *= -1
		vsp = -5;
		grav *= -1;
		jumpspeed *= -1;
		jump_amount -= 1;
		audio_play_sound(snd_gravity_change,1,0);
	}
}
#endregion
#region //Key Commands
//Game restart key-combo
if keyboard_check_direct(ord("R")) && keyboard_check_pressed(ord("L"))
{
	game_restart()
}

//Go back to selection key commmand
if keyboard_check_direct(ord("V"))
{
	tp_hold += 1;
}

if tp_hold >= 60
{
	room_goto(room_select);
	part_system_destroy(global.door_part)	
	//part_emitter_destroy(global.door_part,emitter1)
	part_emitter_destroy_all(global.door_part)
	//part_type_destroy(particle1)
	//part_emitter_stream(global.door_part,emitter1,particle1,0)
}

if tp_hold > 0 && !keyboard_check_direct(ord("V"))
{
	tp_hold -= 1;	
}

tp_hold_bar = (tp_hold/60)*100

//Development commands
if global.dev_mode = 1
{
	//Blue Room commands
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("1"))
	{
		room_goto(room_blue_1)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("2"))
	{
		room_goto(room_blue_2)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("3"))
	{
		room_goto(room_blue_3)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("4"))
	{
		room_goto(room_blue_4)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("5"))
	{
		room_goto(room_blue_5)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("6"))
	{
		room_goto(room_blue_6)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("7"))
	{
		room_goto(room_blue_7)
	}
	
	if keyboard_check_direct(ord("B")) && keyboard_check_direct(ord("8"))
	{
		room_goto(room_blue_7)
	}
	
	
	//Maroon Room commands
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("1"))
	{
		room_goto(room_maroon_1)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("2"))
	{
		room_goto(room_maroon_2)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("3"))
	{
		room_goto(room_maroon_3)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("4"))
	{
		room_goto(room_maroon_4)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("5"))
	{
		room_goto(room_maroon_5)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("6"))
	{
		room_goto(room_maroon_6)
	}
	
	if keyboard_check_direct(ord("M")) && keyboard_check_direct(ord("7"))
	{
		room_goto(room_maroon_7)
	}

	//green room commadns
	if keyboard_check_direct(ord("N")) && keyboard_check_direct(ord("1"))
	{
		room_goto(room_green_1)
	}
	
	if keyboard_check_direct(ord("N")) && keyboard_check_direct(ord("2"))
	{
		room_goto(room_green_2)
	}

	if keyboard_check_direct(ord("N")) && keyboard_check_direct(ord("3"))
	{
		room_goto(room_green_3)
	}
	
	if keyboard_check_direct(ord("N")) && keyboard_check_direct(ord("4"))
	{
		room_goto(room_green_4)
	}
	
	
	//others
	if keyboard_check_direct(ord("J")) && keyboard_check_direct(ord("1"))
	{
		room_goto(room_dark_1)
	}

	if keyboard_check_direct(ord("K")) && keyboard_check_direct(ord("1"))
	{
		room_goto(room_red_1)
	}
	

	if keyboard_check_direct(ord("P")) && keyboard_check_direct(ord("0"))
	{
		global.healthcount = 999;
		global.firemode = 2;
		global.bullet_amount = 99999;
	}
	
	if keyboard_check_direct(ord("P")) && keyboard_check_direct(ord("1"))
	{
		global.secret_amount += 999
	}
	
}
#endregion
#region //Pause Menu
if keyboard_check_pressed(vk_escape)
{
	pause_show *= -1;
}

if pause_show != -1
{
	if !instance_exists(button_paused)
	{
		instance_create(x,y-200,button_paused)
	}
}
#endregion

maxhp = global.maxhp;