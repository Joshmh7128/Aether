//Light directions from player to wall
point_lt = point_direction(test_lamp.x,test_lamp.y,x-16,y-16)
point_rt = point_direction(test_lamp.x,test_lamp.y,x+16,y-16)
point_ld = point_direction(test_lamp.x,test_lamp.y,x-16,y+16)
point_rd = point_direction(test_lamp.x,test_lamp.y,x+16,y+16)
/*
if global.dev_mode = 1
{
visible = false
}
else
{
visible = true
}