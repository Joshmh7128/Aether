//gray_level = (((global.healthcount/8)*-1)+1);

if gray_level < (((global.healthcount/3)*-1)+1)
{
	gray_level += 0.0125;
}

if gray_level > (((global.healthcount/3)*-1)+1)
{
	gray_level -= 0.0125;	
}