charge += 1

if charge > 0 && mouse_check_button_released(mb_left)
{
instance_destroy()
}	

	
if charge > 0 && charge < 60
{
global.bolt_charge = 1
}

if charge > 60 && charge < 120 
{
global.bolt_charge = 2
}

if charge > 120
{
global.bolt_charge = 3
}