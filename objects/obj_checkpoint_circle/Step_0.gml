image_alpha = alpha;
alpha -= 0.06;
radius += 10;

if alpha <= 0
{
	instance_destroy();
}