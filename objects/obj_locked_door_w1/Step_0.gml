/*if object_exists(key_counter)
{
	amount = amount_set;
}
else
{
	amount = 0;	
}*/
amount = global.key_A_amount;

if amount > 0
{
	current_amount = (amount/amount_max)*100; //for drawing healthbar
}

if amount <= 0
{
	current_amount = 0;	
}

rot += 1;

if amount = 4
{
	visible = false;
}

if amount != 4 
{
	visible = true
	/*
	if !place_meeting(x,y,obj_wall_med_v_locked)
	{
		instance_create_depth(x-48,y,depth+1,obj_wall_med_v_locked)	
	}*/
}