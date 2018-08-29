section_1 = choose(1,2,3)
section_2 = choose(1,2,3)
section_3 = choose(1,2,3)

//Determine which sections to spawn for section 1
	if section_1 = 1
	{
		instance_create(x,y,obj_sect_1_1)
	}

	if section_1 = 2
	{
		instance_create(x,y,obj_sect_1_2)
	}

	if section_1 = 3
	{
		instance_create(x,y,obj_sect_1_3)
	}


//Determine which sections to spawn for section 2
	if section_2 = 1
	{
		instance_create(x,y+1600,obj_sect_2_1)
	}

	if section_2 = 2
	{
		instance_create(x,y+1600,obj_sect_2_2)
	}

	if section_2 = 3
	{
		instance_create(x,y+1600,obj_sect_2_3)
	}

//Determine which section to spawn for section 3
	if section_3 = 1
	{
		instance_create(x,y+3200,obj_sect_3_1)
	}

	if section_3 = 2
	{
		instance_create(x,y+3200,obj_sect_3_2)
	}

	if section_3 = 3
	{
		instance_create(x,y+3200,obj_sect_3_3)
	}