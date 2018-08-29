changecount_start = 0;
changecount = 0;
depth = -1001;
rot = 0;
room_current = room;
alpha = 0;

//create the particle system using effect_door_part, check step for destruction event
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_square);
part_type_size(particle1,0.10,0.10,0,0);
part_type_scale(particle1,1,1);
part_type_color1(particle1,16777215);
part_type_alpha1(particle1,0.25);
part_type_speed(particle1,0.50,0.50,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_blend(particle1,0);
part_type_life(particle1,130,130);
emitter1 = part_emitter_create(global.door_part);
part_emitter_region(global.door_part,emitter1,x+64,x+64,y+64,y+64,ps_shape_ellipse,1);
part_emitter_stream(global.door_part,emitter1,particle1,2);