if hp < 6
{
	draw_healthbar(x-64,y-80,x+64,y-92,(hp/6)*100,c_black,c_red,c_green,1,false,false)	
}

if hp >= 6
{
	draw_sprite_ext(spr_melee_sphere,0,x,y,1,1,angle,c_white,1);	
}

if hp = 5 or hp = 4
{
	draw_sprite_ext(spr_melee_sphere,1,x,y,1,1,angle,c_white,1);	
}

if hp <= 3 
{
	draw_sprite_ext(spr_melee_sphere,2,x,y,1,1,angle,c_white,1);	
}

draw_sprite_ext(spr_melee_sphere_eye,0,x,y,1,1,point_direction(x,y,global.playerx,global.playery),c_white,1)

