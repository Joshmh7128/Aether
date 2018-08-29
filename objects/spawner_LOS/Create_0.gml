spawn_range = 128

instance_create(x + (random_range(x,-y)),y,obj_enemy_LOS)
instance_create(x + (random_range(100 + spawn_range,-100 + -spawn_range)),y,obj_enemy_LOS)
instance_create(x + (random_range(200 + spawn_range,-200 + -spawn_range)),y,obj_enemy_LOS)
instance_create(x + (random_range(300 + spawn_range,-300 + -spawn_range)),y,obj_enemy_LOS)
instance_destroy()