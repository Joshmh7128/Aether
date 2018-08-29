depth = -10000
//main player
global.healthcount = 3;
global.maxhp = 3;
global.lifecount = 10;

//ver = "v0.0.3.36"

//gunshots
global.firemode = 1;
global.bullet_amount = 0;
global.bolt_hold = 0;
global.special = "none";

global.special_prog = 1;

global.player_skin = 1;
//1 = Regular
//2 = Whtie
//3 = Purple
//4 = Electric
//5 = Splinter
//6 = Cyclops

//global.shaders = 1 defined in the bloom shader

//upgrade point amount
global.upgrade_point_amount = 0;

//secrets collector
global.secret_list = ds_list_create()
global.secret_amount = 0;

//key collector
global.key_list = ds_list_create()
global.key_amount = 0;

//special lists
global.spc_list	= ds_list_create()

//obtained from 0 world
global.key_A_amount = 0;

//shaders and such
global.invert = 0;

alarm[0] = 1;