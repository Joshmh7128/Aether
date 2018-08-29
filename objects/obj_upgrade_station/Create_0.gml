depth = -999;
originx = x;
originy = y;
originroom = room_get_name(room);
upgrade = choose(0,1,2,3,4);
/*upgrades corresponding to upgrade number
0 = health 
1 = player speed
2 = automatic fire (slow)
3 = jump height
4 = multishot
5 = bullet speed
*/
name = "Empty";
alarm[0] = 1;
price = 1;
run = 1;
rot = 0;
phase = 0;