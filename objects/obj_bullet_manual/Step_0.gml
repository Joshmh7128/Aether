if state = 1
{
	move_towards_point(obj_mouse.x,obj_mouse.y,speed)
	//camera control in player stats
}

if place_meeting(x,y,obj_mouse)
{
	camera_main.current_focus = obj_Player;
	state = 2
}
	
if state = 2
{
	speed = 15
}

instance_create(x,y,obj_bullet_trail)

if place_meeting(x,y,par_all_wall)
{


}

if object_exists(obj_bullet_manual)
{
	camera_main.current_focus = obj_bullet_manual; //camera is set back to player in the bullet itself
}