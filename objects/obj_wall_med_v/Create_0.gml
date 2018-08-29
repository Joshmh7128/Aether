//instance_create(x,y,effect_shadowSystem)
instance_create(x,y,effect_playerLighting_med_v)
//instance_create_depth(x,y,-998,effect_playerLighting_OLD)


instance_create_depth(x,y+144,-1100,effect_wall_highlight)
instance_create_depth(x,y+128,-1100,effect_wall_highlight)
instance_create_depth(x,y+96,-1100,effect_wall_highlight)
instance_create_depth(x,y+64,-1100,effect_wall_highlight)
instance_create_depth(x,y+32,-1100,effect_wall_highlight)
instance_create_depth(x,y,-1100,effect_wall_highlight)
instance_create_depth(x,y-32,-1100,effect_wall_highlight)
instance_create_depth(x,y-64,-1100,effect_wall_highlight)
instance_create_depth(x,y-96,-1100,effect_wall_highlight)
instance_create_depth(x,y-128,-1100,effect_wall_highlight)
instance_create_depth(x,y-144,-1100,effect_wall_highlight)


depth = -999
//image_alpha = 0.1
//depth = effect_playerLighting.depth -1
/*image_angle += choose(90,180,270,360)