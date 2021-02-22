num = 0
num_val = 0
ok = 0
storage_mode = 0
shop_mode = 0
object = noone
alarm[0] = 1

x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

_x[1]=x+84+v_offset
_x[2]=x+192+v_offset
for (var i=0; i<10; i++)
{
    _y[i+1]=y+42+i*13;
}

x1 = 0+v_offset
x2 = 23+v_offset
x3 = 46+v_offset
x4 = 69+v_offset
x5 = 92+v_offset
eqp = ""

cursor_x  = _x[1]
cursor_y  = _y[1]
cursor_x2 = x1
cursor_image_index = 0
cursor_timer = 0

event_user(0)

