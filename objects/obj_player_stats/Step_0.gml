//move to player
x = global.playerx
y = global.playery

if keyboard_check_released(ord("Y")) && global.devtools = 1
{
	global.shaders = !global.shaders	
}

if !object_exists(wall_control)
{
	instance_place(x,y,wall_control)	
}

if !object_exists(effect_grey_hurt)
{
	instance_create(x,y,effect_grey_hurt)	
}

if !object_exists(obj_bullet_blood_tilemap)
{
	instance_create_depth(x,y,-1000,obj_bullet_blood_tilemap)	
}

if keyboard_check_direct(ord("K")) && keyboard_check_released(ord("L")) && global.devtools = 1
{
	global.invert = !global.invert;
}

if keyboard_check_direct(ord("R")) && keyboard_check_released(ord("K")) && global.devtools = 1
{
	room_restart();
}
