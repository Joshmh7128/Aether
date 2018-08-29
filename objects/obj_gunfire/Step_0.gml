#region //basic firing
//Firemode inputs
primary_fire_button = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0,gp_shoulderrb)
primary_fire_button_hold = mouse_check_button(mb_left) || gamepad_button_check(0,gp_shoulderrb)
secondary_fire_button = mouse_check_button_pressed(mb_right) 
secondary_fire_button_hold = mouse_check_button(mb_right)

//Basic Firemode
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.automatic_fire = 0 && global.multishot = 0
{
	instance_create(x,y,effect_shake)
	instance_create(x,y,obj_bullet)
	charge -= 15
	audio_play_sound(laser_sound,1,false)
}

//multishot
if primary_fire_button && global.multishot = 1
{
	instance_create(x,y,effect_shake)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	charge -= 15
	audio_play_sound(laser_sound,1,false)
}
	
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.multishot = 2
{
	instance_create(x,y,effect_shake)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	charge -= 15
	audio_play_sound(laser_sound,1,false)
}
	
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.multishot = 3
{
	instance_create(x,y,effect_shake)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	instance_create(x,y,obj_bullet)
	charge -= 15
	audio_play_sound(laser_sound,1,false)
}
	
//Basic automatic firing
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.automatic_fire = 1
{
	if !alarm[1]
	{
		alarm[1] = 1;
	}
	automatic_alarm = 25;
}
	
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.automatic_fire = 2
{
	if !alarm[1]
	{
		alarm[1] = 1;
	}
	automatic_alarm = 20;
}
    
if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.automatic_fire = 3
{
	if !alarm[1]
	{
		alarm[1] = 1;
	}
	automatic_alarm = 15;
}

if primary_fire_button && (global.firemode = 1) && (global.bullet_amount = 0) && !(charge < 20) && global.automatic_fire = 4
{
	if !alarm[1]
	{
		alarm[1] = 1;
	}
	automatic_alarm = 10;
}
	
//Automatic Firemode (power up)
if primary_fire_button_hold && (global.firemode = 2) && (global.bullet_amount != 0)
    {
	    instance_create(x,y,effect_shake)
	    instance_create(x,y,obj_bullet_auto)
	    audio_play_sound(laser_sound,1,false)
	    global.bullet_amount -= 1;
    }

//Homing Firemode

if primary_fire_button && (global.firemode = 3) && (global.bullet_amount != 0)
    {
    instance_create(x,y,effect_shake)
    instance_create(x,y,obj_bullet_homing)
    audio_play_sound(laser_sound,1,false)
    global.bullet_amount -= 1;
    }
	
	//Reset Firemode when special ammo = 0
if global.bullet_amount = 0
    {
	   global.firemode = 1
    }
#endregion
//Specials

//Shotgun
if global.special = "shotgun"
{
	if secondary_fire_button
	{
		if nofire != 1
		{
			instance_create(x,y+5,obj_bulletrand1)
			instance_create(x,y,obj_bulletrand2)
			instance_create(x,y-5,obj_bulletrand3)
			instance_create(x,y,effect_heavyshake)
			audio_play_sound(laser_sound2,1,false)
		
		if !instance_exists(alarm_1)
			{ 
				instance_create(x,y,alarm_1)
			}
			
		if instance_exists(alarm_1)
			{
			nofire += 0;
			}
		}
    }
}

//trishot
if global.special = "trishot"
{
	if secondary_fire_button
	{
		if nofire != 1
		{
			instance_create(x,y,obj_bullet_tri_up)
			instance_create(x,y,obj_bullet_tri_left)
			instance_create(x,y,obj_bullet_tri_right)
			instance_create(x,y,effect_heavyshake)
			audio_play_sound(laser_sound2,1,false)
		
		if !instance_exists(alarm_1)
			{ 
				instance_create(x,y,alarm_1)
			}
			
		if instance_exists(alarm_1)
			{
				nofire += 0;
			}
		}
    }

}

if global.special = "burst"
{
	if secondary_fire_button
		{
			if nofire != 1
			{
				burst_count = 3;
				alarm[0] = 3
				instance_create(x,y,effect_heavyshake)
				audio_play_sound(laser_sound2,1,false)
			
			if !instance_exists(alarm_1)
				{ 
					instance_create(x,y,alarm_1)
				}
				
			if instance_exists(alarm_1)
				{
					nofire += 0;
				}
			}
	 }
}

//Flamethrower

if global.special = "flamethrower"
{
	if secondary_fire_button_hold
	{
		instance_create(x,y,obj_flamethrow)
	}
}

//Charge setup
if charge < maxcharge
{
charge += 1
}

//Homing

if global.special = "missile"
{
	if secondary_fire_button
	{
		if nofire != 1
		{
		instance_create(x,y,obj_bullet_manual)
		
			if !instance_exists(alarm_1)
			{ 
				instance_create(x,y,alarm_1)
			}
			
		if instance_exists(alarm_1)
			{
			nofire += 0;
			}
		}
	}
}

//Jetpack

if global.special = "jetpack"
{
if (secondary_fire_button_hold) && obj_Player.jetpack_amount > 0
	{
		obj_Player.vsp = -obj_Player.jetpackspeed;
		obj_Player.jetpack_amount -= 1;
		instance_create(x,y,obj_jump_trail1)
		instance_create(x,y,obj_jump_trail2)
		instance_create(x,y,obj_jump_trail3)
	}
}

//Originally for physics blast, probably going to be taken out
/*
if global.special =  && (secondary_fire_button)
{
	instance_create(global.playerx,global.playery,phy_burst)
	
	if !instance_exists(alarm_1)
		{ 
			instance_create(x,y,alarm_1)
		}
			
	if instance_exists(alarm_1)
		{
		nofire += 0;
		}
}
*/
//Room Physics determination
/*
if room != room_red_1
{
	phy = 0;
}
else
{
	phy = 1;
}