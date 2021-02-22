page = 0
num = 0
num_val = 0
ok = 0
object = noone

x = __view_get( e__VW.XView, 0 )+v_offset
y = __view_get( e__VW.YView, 0 )

_x[1]=x+84
_x[2]=x+192
for (var i=0; i<10; i++)
{
    _y[i+1]=y+42+i*13;
}

cursor_x  = _x[1]
cursor_y  = _y[1]
cursor_image_index = 0
cursor_timer = 0

alarm[0] = 1
event_user(0)

