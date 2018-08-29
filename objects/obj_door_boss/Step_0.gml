//room change, destruction of particles, transition creation
if place_meeting(x,y,par_player) && !instance_exists(effect_room_transition_out) && keyboard_check_pressed(ord("E"))
{
	instance_create(global.playerx + 1400, global.playery, effect_room_transition_out)
	changecount_start = 1;
	part_system_destroy(global.door_part)	
	part_emitter_destroy(global.door_part,emitter1)
	part_type_destroy(particle1)
	part_emitter_stream(global.door_part,emitter1,particle1,0)
}

if place_meeting(x,y,par_player)
{
	if alpha < 1
	{
		alpha += 0.1;	
	}
}

if !place_meeting(x,y,par_player)
{
	if alpha > 0
	{
		alpha -= 0.05;
	}
}

if changecount_start = 1
{
	changecount += 1
}

if changecount = 30
{
	room_goto(room_dest)
}

//creates a door effect if one doesn't exist
/*
if !object_exists(effect_door_part) && changecount_start = 0
{
	instance_create(x,y,effect_door_part)	
}
