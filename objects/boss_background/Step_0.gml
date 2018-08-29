if x >= 1940 && y <= 3500 && global.boss_health > 0
{
	boss_control.boss_state = 2
}

if boss_control.boss_state = 1
{
	move_towards_point(round(1950),round(3500),speeda)	
	instance_create(x,y,effect_shake_small)
}

if boss_control.boss_state = 2
{
	move_towards_point(round(1950),round(4400),speeda)	
	speeda = 0;
	
	spawn_count += 1;
	
	if spawn_count > 2200
	{
		spawn_count = 0	
	}
	
	//spawn all left-moving turrets
	if spawn_count = 100
	{
		instance_create(2800,3700,boss_turret_moveL)	
	}
	
	if spawn_count = 200
	{
		instance_create(2800,3700,boss_turret_moveL)
	}
	
	if spawn_count = 300
	{
		instance_create(2800,3700,boss_turret_moveL)
	}
	
	if spawn_count = 400
	{
		instance_create(2800,3700,boss_turret_moveL)
	}
	
	if spawn_count = 500
	{
		instance_create(2800,3700,boss_turret_moveL)
	}
	
	//spawn all right-moving turrets
	if spawn_count = 700
	{
		instance_create(1000,3700,boss_turret_moveR)	
	}
	
	if spawn_count = 800
	{
		instance_create(1000,3700,boss_turret_moveR)
	}
	
	if spawn_count = 900
	{
		instance_create(1000,3700,boss_turret_moveR)
	}
	
	if spawn_count = 1000
	{
		instance_create(1000,3700,boss_turret_moveR)
	}
	
	if spawn_count = 1100
	{
		instance_create(1000,3700,boss_turret_moveR)
	}
	
	//spawn spike balls
	if spawn_count = 1400
	{
		instance_create_depth(1500,2880,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1450
	{
		instance_create_depth(1550,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 1500
	{
		instance_create_depth(1600,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1550
	{
		instance_create_depth(1650,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1600
	{
		instance_create_depth(1700,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1650
	{
		instance_create_depth(1750,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1700
	{
		instance_create_depth(1800,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 1750
	{
		instance_create_depth(1850,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 1800
	{
		instance_create_depth(1900,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1850
	{
		instance_create_depth(1950,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 1900
	{
		instance_create_depth(2000,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 1950
	{
		instance_create_depth(2050,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 2000
	{
		instance_create_depth(2100,2800,depth-200,boss_spike_ball)
	}
	
	if spawn_count = 2050
	{
		instance_create_depth(2150,2800,depth-200,boss_spike_ball)
	}

	if spawn_count = 2100
	{
		instance_create_depth(2200,2800,depth-200,boss_spike_ball)
	}

}

if boss_control.boss_state = 3
{
	if y < 5000
	{
		y += 3
	}
	
	if alarm[0] < 0
	{
		alarm[0] = 1
	}
}

if y > 5000
{
	if alarm[0] > 0
	{
		alarm[0] = 9999999	
	}
}


