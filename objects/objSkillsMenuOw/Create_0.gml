psimode = 0 // 0 - OFF, 1 - RECOVER, 2 - ASSIST, 3 - PASSIVE
mode = 0 // 0 - If PSI user: Selecting off, rec, ass, pas skills 
         //     If non PSI user: Browsing skills
         // 1 - Browsing PSI
         // 2 - Selecting player
lifeup = 0
global.current_inv = 0
num = 1
use = 1
ok = 0
type = 0 // 0- Lifeup; 1- Healing

x = __view_get( e__VW.XView, 0 )+v_offset

//Mode 0
_x[1]=84
//Mode 1
_x[2]=144
_x[3]=204+22
_x[4]=220+22
_x[5]=236+22
_x[6]=252+22
//Mode 2

//Mode 0 & 1
_y[1]=7+32
_y[2]=21+32
_y[3]=35+32
_y[4]=49+32
_y[5]=63+32
//Mode 2

x1 = 0+v_offset
x2 = 23+v_offset
x3 = 46+v_offset
x4 = 69+v_offset

cursor_x  = _x[1]
cursor_y  = _y[1]
cursor_x2 = x1
cursor_image_index = 0
cursor_timer = 0

message = ""

event_user(0)

alarm[0] = 1

