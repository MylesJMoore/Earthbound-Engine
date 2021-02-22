psimode = 0 // 0 - OFF, 1 - DEF, 2 - ASSIST
mode = 0

num = 1
ok = 0

x+=v_offset

//Mode 0
_x[1]=x+84+8
//Mode 1
_x[2]=x+144+8

_x[3]=x+204+24
_x[4]=x+220+24
_x[5]=x+236+24
_x[6]=x+252+24

_y[1]=7+8
_y[2]=21+8
_y[3]=35+8
_y[4]=49+8
_y[5]=63+8

cursor_x  = _x[1]
cursor_y  = _y[1]
cursor_image_index = 0
cursor_timer = 0

event_user(0)

alarm[0] = 1

