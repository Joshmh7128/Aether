image_alpha = alpha;
alpha -= 0.06;
radius += 3;

if alpha <= 0
{
	instance_destroy();
}