//start by getting all the variables we need (there's a lot)
var cd, ca, p1c, p2c, p3c, p4c, p5c, p6c, p7c, p8c, p9c, p10c, p11c, p12c, p13c, p14c, p15c, p16c, p17c, p18c;
var p19c, p20c, p21c, p22c, p23c, p24c, p25c;
var p1x, p2x, p3x, p4x, p5x, p6x, p7x, p8x, p9x, p10x, p11x, p12x, p13x, p14x, p15x, p16x, p17x, p18x;
var p19x, p20x, p21x, p22x, p23x, p24x, p25x;
var p1y, p2y, p3y, p4y, p5y, p6y, p7y, p8y, p9y, p10y, p11y, p12y, p13y, p14y, p15y, p16y, p17y, p18y;
var p19y, p20y, p21y, p22y, p23y, p24y, p25y;
//get direction and distance to the player
cd = point_distance(x,y,obj_Player.x,obj_Player.y);
ca = point_direction(x,y,obj_Player.x,obj_Player.y);
//get the check increment (take the entire line from the center of the checking object to the player, and 
//make it into 25 points.
p1c		= (cd/25)*1 //this will be 1 increment away from the object
p2c		= (cd/25)*2 //this will be 2 increment away from the object
p3c		= (cd/25)*3 //this will be 3 increment away from the object
p4c		= (cd/25)*4 //this will be 4 increment away from the object
p5c		= (cd/25)*5 //this will be 5 increment away from the object
p6c		= (cd/25)*6 //this will be 6... increment away from the object
p7c		= (cd/25)*7 
p8c		= (cd/25)*8 
p9c		= (cd/25)*9 
p10c	= (cd/25)*10 
p11c	= (cd/25)*11 
p12c	= (cd/25)*12 
p13c	= (cd/25)*13 
p14c	= (cd/25)*14 
p15c	= (cd/25)*15 
p16c	= (cd/25)*16 
p17c	= (cd/25)*17 
p18c	= (cd/25)*18 
p19c	= (cd/25)*19 
p20c	= (cd/25)*20 
p21c	= (cd/25)*21 
p22c	= (cd/25)*22 
p23c	= (cd/25)*23 
p24c	= (cd/25)*24 
p25c	= (cd/25)*25 

//next, we create an x and y for every one of the 25 distances
p1x = lengthdir_x(p1c,ca);
p1y = lengthdir_y(p1c,ca);

p2x = lengthdir_x(p2c,ca);
p2y = lengthdir_y(p2c,ca);

p3x = lengthdir_x(p3c,ca);
p3y = lengthdir_y(p3c,ca);

p4x = lengthdir_x(p4c,ca);
p4y = lengthdir_y(p4c,ca);

p5x = lengthdir_x(p5c,ca);
p5y = lengthdir_y(p5c,ca);

p6x = lengthdir_x(p6c,ca);
p6y = lengthdir_y(p6c,ca);

p7x = lengthdir_x(p7c,ca);
p7y = lengthdir_y(p7c,ca);

p8x = lengthdir_x(p8c,ca);
p8y = lengthdir_y(p8c,ca);

p9x = lengthdir_x(p9c,ca);
p9y = lengthdir_y(p9c,ca);

p10x = lengthdir_x(p10c,ca);
p10y = lengthdir_y(p10c,ca);

p11x = lengthdir_x(p11c,ca);
p11y = lengthdir_y(p11c,ca);

p12x = lengthdir_x(p12c,ca);
p12y = lengthdir_y(p12c,ca);

p13x = lengthdir_x(p13c,ca);
p13y = lengthdir_y(p13c,ca);

p14x = lengthdir_x(p14c,ca);
p14y = lengthdir_y(p14c,ca);

p15x = lengthdir_x(p15c,ca);
p15y = lengthdir_y(p15c,ca);

p16x = lengthdir_x(p16c,ca);
p16y = lengthdir_y(p16c,ca);

p17x = lengthdir_x(p17c,ca);
p17y = lengthdir_y(p17c,ca);

p18x = lengthdir_x(p18c,ca);
p18y = lengthdir_y(p18c,ca);

p19x = lengthdir_x(p19c,ca);
p19y = lengthdir_y(p19c,ca);

p20x = lengthdir_x(p20c,ca);
p20y = lengthdir_y(p20c,ca);

p21x = lengthdir_x(p21c,ca);
p21y = lengthdir_y(p21c,ca);

p22x = lengthdir_x(p22c,ca);
p22y = lengthdir_y(p22c,ca);

p23x = lengthdir_x(p23c,ca);
p23y = lengthdir_y(p23c,ca);

p24x = lengthdir_x(p24c,ca);
p24y = lengthdir_y(p24c,ca);

p25x = lengthdir_x(p25c,ca);
p25y = lengthdir_y(p25c,ca);

//check each position for place_free
if 
!place_free(p1x,p1y) or
!place_free(p2x,p2y) or
!place_free(p3x,p3y) or
!place_free(p4x,p4y) or
!place_free(p5x,p5y) or
!place_free(p6x,p6y) or
!place_free(p7x,p7y) or
!place_free(p8x,p8y) or
!place_free(p9x,p9y) or
!place_free(p10x,p10y) or
!place_free(p11x,p11y) or
!place_free(p12x,p12y) or
!place_free(p13x,p13y) or
!place_free(p14x,p14y) or
!place_free(p15x,p15y) or
!place_free(p16x,p16y) or
!place_free(p17x,p17y) or
!place_free(p18x,p18y) or
!place_free(p19x,p19y) or
!place_free(p20x,p20y) or
!place_free(p21x,p21y) or
!place_free(p22x,p22y) or
!place_free(p23x,p23y) or
!place_free(p24x,p24y) or
!place_free(p25x,p25y) 
{
	return true;
}
else
{
	return false;
}
