mode = 0 // 0 - Equipment mode, 1 - Inventory mode
emode = 0 // 0 - Weap, 1 - Body, 2 - Arms, 3 - Other
slot = 0
m = 1
num = 0
num_val = 0
ok = 0
alarm[0] = 1

x = __view_get( e__VW.XView, 0 )+v_offset
y = __view_get( e__VW.YView, 0 )

_x[1]=x+84
_x[2]=x+192
_x[3]=x+252
for (var i=0; i<10; i++)
{
    _y[i+1]=y+42+i*13;
}

x1 = 0+v_offset
x2 = 23+v_offset
x3 = 46+v_offset
x4 = 69+v_offset
eqp = ""
current_inv1 = global.current_inv+1

cursor_x  = _x[1]
cursor_y  = _y[1]+6
cursor_x2 = x1
cursor_image_index = 0
cursor_timer = 0

event_user(0);
event_user(1);

