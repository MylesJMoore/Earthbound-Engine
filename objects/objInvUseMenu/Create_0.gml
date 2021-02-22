num = 0
num_val = 0
use = 1
lifeup = 0
x+=v_offset
//Use or drop
_x[1] = x+12
_y[1] = y+9
_y[2] = y+21
_y[0] = y+33

//To whom?
_x[2] = x+57
_y[3] = y+8
_y[4] = y+20
_y[5] = y+30
_y[7] = y+44

//Drop confirmation
_x[3] = x - 18
_x[4] = x + 21
_y[6] = y + 132

ok = 0
cursor_x  = _x[1]-3
cursor_y  = _y[1]
cursor_image_index = 0
cursor_timer = 0
mode = 0 //0 - Idle, 1 - Use, 2 - Drop, 3 - Give
message = ""

alarm[0] = 1

