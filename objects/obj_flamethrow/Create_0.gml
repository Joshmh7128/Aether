movespeed = random_range(8,14)
rotatespeed = random_range(-15,15)
rotate = random_range(-45,45) 
xchange = random_range(-100,100)
ychange = random_range(-100,100)
alpha = 1
alpha2 = 0
move_towards_point(obj_mouse.x+xchange,obj_mouse.y+ychange,movespeed);