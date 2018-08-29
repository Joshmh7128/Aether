//phy_bullet = true;

var target = obj_mouse; 
var force = 300
var angle = point_direction(x,y,target.x,target.y)
var xx = lengthdir_x(force,angle);
var yy = lengthdir_y(force,angle);

physics_apply_impulse(x,y,xx,yy);

self_destroy = 0;

