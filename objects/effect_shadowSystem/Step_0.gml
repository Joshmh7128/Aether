/// @description  draw_shadows
plX = pl.x
plY = pl.y


    /*
    if (place_meeting(x,y,obj_rayKey)) {
    
        shON = true
    }
    else {shON = false}
    */

if check = 1

if (shON = true) {
    if (point_distance(plX,plY,x,y) < lightRad) {inLight = true}
    else {inLight = false}
    
    if (inLight = true) {    
        while (trace1 = true ) {   
            direct1 = point_direction(plX,plY,x,y) + direct1Mod
            point1X = plX + lengthdir_x(lightRad + extender,direct1)
            point1Y = plY + lengthdir_y(lightRad + extender,direct1)
            direct1Mod+=0.1 
            if (!collision_line(plX,plY,point1X,point1Y,id,true,false)) {trace1 = false}  
        }
		while (trace1 = false && trace3 = true) {
            point3X = plX + lengthdir_x(mover1,direct1-0.1)
            point3Y = plY + lengthdir_y(mover1,direct1-0.1)
            mover1 += 0.1
            if (collision_circle(point3X,point3Y,1.1,id,true,false)) {trace3 = false}
        }
    
        while (trace2 = true ) {   
            direct2 = point_direction(plX,plY,x,y) + direct2Mod
            point2X = plX + lengthdir_x(lightRad + extender,direct2)
            point2Y = plY + lengthdir_y(lightRad + extender,direct2)
            direct2Mod-=0.1 
            if (!collision_line(plX,plY,point2X,point2Y,id,true,false)) {trace2 = false}
        }
        while (trace2 = false && trace4 = true) {
            point4X = plX + lengthdir_x(mover2,direct2+0.1)
            point4Y = plY + lengthdir_y(mover2,direct2+0.1)
            mover2 += 0.1
            if (collision_circle(point4X,point4Y,1.1,id,true,false)) {trace4 = false}
        }
    }
    
    if (plXOld != plX || plYOld != plY) {
        trace1 = true
        trace2 = true
        trace3 = true
        trace4 = true
        mover1 = 0
        mover2 = 0
        direct1Mod = 0
        direct2Mod = 0
        plXOld = plX 
        plYOld = plY
    }
}

/* */
/*  */
