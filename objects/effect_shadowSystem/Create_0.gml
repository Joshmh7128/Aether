/// @description  shadow variables
surf_shadow = surface_create(room_width,room_height)
shON = true // this variable enables and disables the shadow system.
lightRad = 150
pl =  obj_Player

plX = pl.x
plY = pl.y
plXOld = 0
plYOld = 0

// First border Line

direct1Mod = 0
direct2Mod = 0

trace1 = true
trace2 = true
trace3 = true
trace4 = true

extender = 200 // extra shadow space for close lighting

point3X = 0
point3Y = 0
point4X = 0
point4Y = 0

point1X = 0
point1Y = 0
point2X = 0
point2Y = 0

mover1 = 0
mover2 = 0

alarm[0] = 2
alarm[1] = 3
check = 0