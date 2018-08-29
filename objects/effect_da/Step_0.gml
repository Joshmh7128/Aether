//make spin, move in random direction, all takes place over 10 frames
image_angle += 3;
image_alpha -= 0.02;
move_towards_point(global.playerx,global.playery,7)

//if you can't see it, destroy it
if image_alpha <= 0
{
	instance_destroy();
}