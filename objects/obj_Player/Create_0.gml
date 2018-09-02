//movement
vsp = 0;
hsp = 0;
grav = 0.7;
maxgrav = 15;
jumpspeed = 15 + global.jump_height;
jetpackspeed = 3;
jetpack_amount = 60;
maxhsp = 8.2 + global.player_speed;
clickjump = 0;
ext_jump = 0;
val_jump = 0;
jump_amount = 2;
maxjumps = 2;
max_jetpack = 60;
hsp_carry = 0;
vsp_carry = 0;
ladder = 0;
grav_sign = 0;
grav_state = 1; //1 = normal gravity -1 = reversed
//wall_jump = global.wall_jump;
wall_jump_amount = 1;
dash_determine = 1;

//teleport back
tp_hold = 0;
tp_hold_bar = 0;

//hp
maxhp = global.maxhp;

//faces and states
state = 1;
facing = 1;
depth = -9000;
pause_show = -1;

//sprite speed/index
image_speed = 1;
image_index = 1;


//globals
global.playerx = 0;
global.playery = 0;
global.playerID = id;

//GUI
global.orbshow = 0;
red_ping = 0;

//dev modes
dev_mode = 1;

//trainsitions
instance_create(x,y,effect_room_transition_in)

death_anim = 0;