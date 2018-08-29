draw_set_color(c_white)
draw_set_halign(fa_center)
#region //intro 
if local_mode = 0
{
	draw_set_color(c_white)
	if tut_stage.stage = 1
	{
		draw_text(x,y,@"ARE YOU AWAKE? 
		(Press 'E' to continue)")
	}
	
	if tut_stage.stage = 2
	{
		draw_text(x,y,@"GOOD.")	
	}
	
	if tut_stage.stage = 3
	{
		draw_text(x,y,@"YOU'VE BEEN TRAPPED IN HERE SINCE THE OLD WAR.")	
	}
	
	if tut_stage.stage = 4
	{
		draw_text(x,y,@"THE TIME HAS COME TO SET YOU FREE.")	
	}
	
	if tut_stage.stage = 5
	{
		draw_text(x,y,@"WE LOST THE WAR. THE ALIENS WON. EARTH IS...")	
	}
	
	if tut_stage.stage = 6
	{
		draw_text(x,y,@"...")	
	}
	
	if tut_stage.stage = 7
	{
		draw_text(x,y,@"DIFFERENT.")	
	}
	
	if tut_stage.stage = 8
	{
		draw_text(x,y,@"THE ALIENS REBUILT IT. THEY CALL IT THE AETHER.")	
	}
	
	if tut_stage.stage = 9
	{
		
		draw_text(x,y,@"YOUR SENSORS ARE DAMAGED. 
		YOU WILL NOT BE ABLE TO SEE AS WELL AS YOU SHOULD")	
	}
	
	if tut_stage.stage = 10
	{
		draw_text(x,y,@"HERE IS WHAT YOU MUST KNOW RIGHT NOW.")	
	}
	
	if tut_stage.stage = 11
	{
		draw_text(x,y,@"YOU ARE BEING HELD PRISONER BY THE ALIENS.")	
	}
	
	if tut_stage.stage = 12
	{
		draw_text(x,y,@"YOU CANNOT KILL THEM, BUT YOU CAN ESCAPE THEM.")	
	}
	
	if tut_stage.stage = 13
	{
		draw_text(x,y,@"YOUR SENSORS ARE AUGMENTED TO SHOW ANYTHING YOU CAN DESTROY.")	
	}
	
	if tut_stage.stage = 14
	{
		draw_text(x,y,@"GET OUT OF THIS PRISON.")	
	}
	
	if tut_stage.stage >= 15
	{
		draw_text(x,y,@"DESTROY THE AETHER.")	
	}
}
#endregion

if local_mode = 1 //double jump
	{
		draw_text(x,y,@"YOUR SUIT ALLOWS YOU TO DOUBLE JUMP.")
		draw_set_font(font_5)
		draw_set_color(c_white)
	}
	
if local_mode = 2 //hp bar
	{
		draw_text(x,y,@"THE BAR BELOW YOU DISPLAYS YOUR HEALTH.
		YOU HAVE A TOTAL OF 3 HEALTH POINTS.")
		draw_set_font(font_5)
		draw_set_color(c_white)
	}
	
if local_mode = 3 //checkpoint (assembler)
	{
		draw_text(x,y,@"THIS IS AN ASSEMBLER. 
		TO ACTIVATE THIS, TOUCH IT.
		ONCE ACTIVATED, IT BECOMES A CHECKPOINT.
		YOU WILL RESPAWN AT THE LAST ACTIVATED ONE IF YOU DIE.")
		draw_set_font(font_5)
		draw_set_color(c_white)
	}
	
if local_mode = 4 //lives
	{
		draw_text(x,y,@"THESE SMALL ORBS ARE HEALTH PODS.
		THE ALIENS DROP THESE ALL OVER THE AETHER FOR THEIR TROOPS.
		THEY WILL RESTORE YOUR HEALTH.")
		draw_set_font(font_5)
		draw_set_color(c_white)
	}
	
if local_mode = 5 //wall highlights
	{
		draw_text(x,y,@"YOUR SENSORS ARE CURRENTLY IN BACKUP MODE.
		THEY WILL HIGHLIGHT SOLID SURFACES FOR YOU.
		THROUGHOUT THE AETHER THERE ARE MANY SURFACES WHICH
		ARE NOT WHAT THEY APPREAR TO BE.
		GO TOUCH THE WALL TO YOUR RIGHT.")
		draw_set_font(font_5)
		draw_set_color(c_white)
	}
	
if local_mode = 6
{
		draw_set_color(c_black)
		draw_text(x,y,@"THE PURPOSE OF THESE SECRET AREAS
		IS UNKNOWN. BUT INSIDE EACH ONE, THERE ARE MATTER MODULES
		TO BE COLLECTED. WHEN YOU DIE AND RESPAWN, I MUST 
		CONSUME ONE OF THESE TO REBUILD YOU. FIND THEM. YOU CAN SEE
		HOW MANY MODULES YOU HAVE LEFT IN THE TOP LEFT OF YOUR SCREEN.
		IF YOU RUN OUT OF MATTER MODULES, I WILL NOT BE ABLE TO REVIVE YOU.")
		draw_set_font(font_5)		
}

if local_mode = 7
{
		draw_set_color(c_black)
		draw_text(x,y,@"SOME SAY THE ALIENS BUILT THESE DURING A WAR
		OF THEIR OWN, BUT WERE LEFT TO BE FORGOTTEN.")
		draw_set_font(font_5)
}

if local_mode = 8
{
		draw_set_color(c_white)
		draw_text(x,y,@"YOU HAVE A LONG JOURNEY AHEAD BEFORE YOU'RE
		READY TO TAKE DOWN THE AETHER. FIRST,
		ESCAPE THIS PRISON. THEN I WILL GUIDE YOU
		TO ME.")
		draw_set_font(font_5)
}

if local_mode = 9
{
		draw_set_color(c_white)
		draw_set_font(font_5)
		draw_text(x,y,@"THIS IS A TELEPORTER. 
		IT WILL BRING TO THE NEXT
		AREA. TO USE IT, WALK UP TO IT AND PRESS ''E''")
		
}

if local_mode = 10
{
		draw_set_color(c_white)
		draw_set_font(font_5)
		draw_text(x,y,@"YOU'VE MADE IT TO THE
		NEXT AREA. I MUST KEEP CONTACT
		TO A MINIMUM. GOOD LUCK.")
}

if local_mode = 11
{
		draw_set_color(c_white)
		draw_set_font(font_5)
		draw_text(x,y,@"THIS IS A KEY FRAGMENT. WE'LL NEED THIS
		TO GET TO THE NEXT AREA OF THE AETHER.")		
}

if local_mode = 12
{
		draw_set_color(c_white)
		draw_set_font(font_3)
		draw_text(x,y,@"THERE ARE THREE PATHS AHEAD:
		UP, DOWN, AND FORWARD. 
		YOU DO NOT NEED TO COMPLETE THEM ALL,
		BUT YOU MUST COMPLETE AT LEAST ONE TO ADVANCE.")
		
}

if local_mode = 13
{
		draw_set_color(c_white)
		draw_set_font(font_3)
		draw_text(x,y,@"
		WELCOME TO THE ARMORY.
		AS YOU EXPLORE THE AETHER, YOU WILL FIND
		PACKAGES LEFT BEHIND BY THE ALIENS.
		YOU CAN CHANGE WHICH PACKAGE YOU HAVE EQUIPPED HERE.
		THERE ARE TWO SECTIONS: WEAPONS AND ABILITIES.
		(PRESS RIGHT CLICK TO USE YOUR PACKAGE)")
}

if local_mode = 14
{
		draw_set_color(c_white)
		draw_set_font(font_3)
		draw_text(x,y,@"
		THIS IS AN UPGRADE STATION. WHEN YOU
		KILL ENEMIES, THEY DROP SMALL BLUE ORBS.
		THOSE ARE THEIR POWER CORES. IF YOU MANAGE
		TO COLLECT ENOUGH FROM THEM, BRING THEM BACK
		HERE, AND I CAN HACK THE UPGRADE TO YOU.
		TO START FILLING THE STATION, TOUCH IT AND HOLD ''E''
		THESE STATIONS ARE MUCH MORE COMMON THAN THE PACKAGES.")
}