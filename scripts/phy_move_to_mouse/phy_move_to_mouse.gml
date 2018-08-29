// NOTICE: The larger your object is the more force needs to be applied. For a 64x64 object I had to use a run speed of 600.

///phy_move_to_mouse(spd)

//image_speed = phy_speed; //You may have to play around with this number

//mouse rotation
phy_fixed_rotation = true;
var mouse_dir;
mouse_dir = point_direction(x, y, mouse_x, mouse_y);
phy_rotation = -mouse_dir

//define variables

spd=argument0

physics_apply_local_force(x,y,+spd,0)
