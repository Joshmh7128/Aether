//determine when the wall is broken
if (hp <= 0)
{
	instance_create(x,y,obj_green_blood)
	instance_create(x,y,obj_green_blood)
	instance_create(x,y,obj_green_blood)
	instance_create(x,y,obj_green_blood)
	instance_create(x,y,obj_green_break_up)
	instance_create(x,y,obj_green_break_down)
	instance_create(x,y,obj_green_break_left)
	instance_create(x,y,obj_green_break_right)
	instance_create(x,y,obj_grid_cell_clear)		//**CLEARS PREVIOUSLY OCCUPIED CELL ON MP GRID**
	instance_create(x-16,y-16,obj_grid_cell_clear)	//**CLEARS PREVIOUSLY OCCUPIED CELL ON MP GRID**
	instance_create(x,y-16,obj_grid_cell_clear)		//**CLEARS PREVIOUSLY OCCUPIED CELL ON MP GRID**
	instance_create(x-16,y,obj_grid_cell_clear)		//**CLEARS PREVIOUSLY OCCUPIED CELL ON MP GRID**
	instance_destroy()
}

//sprite control

if (hp >= 2)
{
	image_index = 0;
}

if (hp <= 1)
{
	image_index = 1;
}