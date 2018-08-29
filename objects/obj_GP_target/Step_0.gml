if gamepad_is_connected(0)
{ 
gamepad_set_axis_deadzone(0, 0.2);
}

if global.gamepad_mode = 0
{
x = -5000
y = -5000
}

if global.gamepad_mode = 1
{
x = obj_gun.x + lengthdir_x(radius,obj_gun_GP.point_angle)
y = obj_gun.y + lengthdir_y(radius,obj_gun_GP.point_angle)
}

if keyboard_check_released(ord("G"))
{
global.gamepad_mode = 1
}

if keyboard_check_released(ord("H"))
{
global.gamepad_mode = 0
}

