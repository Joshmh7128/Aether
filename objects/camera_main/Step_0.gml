var xTo, yTo;
move_towards_point(current_mouse.x,current_mouse.y,0);
xTo = current_focus.x + lengthdir_x(min(96,distance_to_point(current_mouse.x,current_mouse.y)), direction);
yTo = current_focus.y + lengthdir_y(min(96,distance_to_point(current_mouse.x,current_mouse.y)), direction);

x += (xTo-x)/25;
y += (yTo-y)/25;

__view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 )/2) + x );
__view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 )/2) + y );

//Screen shake
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-global.shake,global.shake) ));
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-global.shake,global.shake) ));
global.shake *= shakespeed;
/*
To constrict camera to room:

view_xview = clamp(view_xview,0,room_width-view_wview);
view_yview = clamp(view_yview,0,room_height-view_hview);
*/
if global.dev_mode = 1
{
	sprite_index = spr_water;
}
else
{
	sprite_index = -1;	
}