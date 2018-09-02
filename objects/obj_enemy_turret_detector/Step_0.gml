//start by getting all the variables we need (there's a lot)

//get direction and distance to the player
cd = point_distance(x,y,obj_Player.x,obj_Player.y);
ca = point_direction(x,y,obj_Player.x,obj_Player.y);
image_angle = ca;
//get the check increment (take the entire line from the center of the checking object to the player, and 
//make it into 25 points.
p1c		= (cd/25)*1; //this will be 1 increment away from the object
p2c		= (cd/25)*2; //this will be 2 increment away from the object
p3c		= (cd/25)*3; //this will be 3 increment away from the object
p4c		= (cd/25)*4; //this will be 4 increment away from the object
p5c		= (cd/25)*5; //this will be 5 increment away from the object
p6c		= (cd/25)*6; //this will be 6... increment away from the object
p7c		= (cd/25)*7;
p8c		= (cd/25)*8;
p9c		= (cd/25)*9;
p10c	= (cd/25)*10;
p11c	= (cd/25)*11;
p12c	= (cd/25)*12;
p13c	= (cd/25)*13;
p14c	= (cd/25)*14;
p15c	= (cd/25)*15;
p16c	= (cd/25)*16;
p17c	= (cd/25)*17;
p18c	= (cd/25)*18;
p19c	= (cd/25)*19;
p20c	= (cd/25)*20;
p21c	= (cd/25)*21;
p22c	= (cd/25)*22;
p23c	= (cd/25)*23;
p24c	= (cd/25)*24;
p25c	= (cd/25)*25;

//next, we create an x and y for every one of the 25 distances
p1x = x+lengthdir_x(p1c,ca);
p1y = y+lengthdir_y(p1c,ca);

p2x = x+lengthdir_x(p2c,ca);
p2y = y+lengthdir_y(p2c,ca);

p3x = x+lengthdir_x(p3c,ca);
p3y = y+lengthdir_y(p3c,ca);

p4x = x+lengthdir_x(p4c,ca);
p4y = y+lengthdir_y(p4c,ca);

p5x = x+lengthdir_x(p5c,ca);
p5y = y+lengthdir_y(p5c,ca);

p6x = x+lengthdir_x(p6c,ca);
p6y = y+lengthdir_y(p6c,ca);

p7x = x+lengthdir_x(p7c,ca);
p7y = y+lengthdir_y(p7c,ca);

p8x = x+lengthdir_x(p8c,ca);
p8y = y+lengthdir_y(p8c,ca);

p9x = x+lengthdir_x(p9c,ca);
p9y = y+lengthdir_y(p9c,ca);

p10x = x+lengthdir_x(p10c,ca);
p10y = y+lengthdir_y(p10c,ca);

p11x = x+lengthdir_x(p11c,ca);
p11y = y+lengthdir_y(p11c,ca);

p12x = x+lengthdir_x(p12c,ca);
p12y = y+lengthdir_y(p12c,ca);

p13x = x+lengthdir_x(p13c,ca);
p13y = y+lengthdir_y(p13c,ca);

p14x = x+lengthdir_x(p14c,ca);
p14y = y+lengthdir_y(p14c,ca);

p15x = x+lengthdir_x(p15c,ca);
p15y = y+lengthdir_y(p15c,ca);

p16x = x+lengthdir_x(p16c,ca);
p16y = y+lengthdir_y(p16c,ca);

p17x = x+lengthdir_x(p17c,ca);
p17y = y+lengthdir_y(p17c,ca);

p18x = x+lengthdir_x(p18c,ca);
p18y = y+lengthdir_y(p18c,ca);

p19x = x+lengthdir_x(p19c,ca);
p19y = y+lengthdir_y(p19c,ca);

p20x = x+lengthdir_x(p20c,ca);
p20y = y+lengthdir_y(p20c,ca);

p21x = x+lengthdir_x(p21c,ca);
p21y = y+lengthdir_y(p21c,ca);

p22x = x+lengthdir_x(p22c,ca);
p22y = y+lengthdir_y(p22c,ca);

p23x = x+lengthdir_x(p23c,ca);
p23y = y+lengthdir_y(p23c,ca);

p24x = x+lengthdir_x(p24c,ca);
p24y = y+lengthdir_y(p24c,ca);

p25x = x+lengthdir_x(p25c,ca);
p25y = y+lengthdir_y(p25c,ca);

//check each position for place_free
if 
!place_meeting(p1x,p1y,par_all_wall) and
!place_meeting(p2x,p2y,par_all_wall) and
!place_meeting(p3x,p3y,par_all_wall) and
!place_meeting(p4x,p4y,par_all_wall) and
!place_meeting(p5x,p5y,par_all_wall) and
!place_meeting(p6x,p6y,par_all_wall) and
!place_meeting(p7x,p7y,par_all_wall) and
!place_meeting(p8x,p8y,par_all_wall) and
!place_meeting(p9x,p9y,par_all_wall) and
!place_meeting(p10x,p10y,par_all_wall) and
!place_meeting(p11x,p11y,par_all_wall) and
!place_meeting(p12x,p12y,par_all_wall) and
!place_meeting(p13x,p13y,par_all_wall) and
!place_meeting(p14x,p14y,par_all_wall) and
!place_meeting(p15x,p15y,par_all_wall) and
!place_meeting(p16x,p16y,par_all_wall) and
!place_meeting(p17x,p17y,par_all_wall) and
!place_meeting(p18x,p18y,par_all_wall) and
!place_meeting(p19x,p19y,par_all_wall) and
!place_meeting(p20x,p20y,par_all_wall) and
!place_meeting(p21x,p21y,par_all_wall) and
!place_meeting(p22x,p22y,par_all_wall) and
!place_meeting(p23x,p23y,par_all_wall) and
!place_meeting(p24x,p24y,par_all_wall) //and
//!place_meeting(p25x,p25y,par_all_wall) 
{
	aim = true;
}
else
{
	aim = false;
}


//move_bounce_all(false)
/*
if !collision_line(x,y,obj_Player.x, obj_Player.y,par_all_wall,1,0)
{
	aim = true;
}
else
{
	aim = false;	
}

/*

if !collision_line(x,y,obj_Player.x,obj_Player.y,par_all_wall,false,true) 
{
	aim = 1;
	
	if !alarm[0]
	{
		alarm[0] = 40;
	}
}
else
{
	aim = 0;	
	
	if alarm[0]
	{
		alarm[0] = 0;
	}
}

speed = 0.5;

if hp = 4
{
	if !alarm[1] 
	{
		alarm[1] = 30;	
	}
	speed = 5;
}

if hp = 3
{
	speed = 5;	
}

if hp = 2
{
	speed = 5;	
}

if hp = 1
{
	speed = 5;	
}

if (hp <= 0)
{
	instance_create_depth(x,y,-1010,effect_flash)
	instance_create(x,y,effect_turret_die)
	instance_create(x,y,effect_bit_spawn)
	instance_create(x,y,obj_enemy_break_up)
	instance_create(x,y,obj_enemy_break_down)
	instance_create(x,y,obj_enemy_break_left)
	instance_create(x,y,obj_enemy_break_right)
	audio_play_sound(snd_enemy_break,1,false)
	instance_destroy();
}