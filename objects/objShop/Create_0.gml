//This object shows a list of the items in the store
//Everything else is done by the instance that called it

object = noone
shop_index = -1
shop_items = 0
bought = 0
num = 0
ok = 0

x = __view_get( e__VW.XView, 0 )+v_offset
y = __view_get( e__VW.YView, 0 )

for (var i=0; i<10; i++)
{
    _y[i+1]=y+40+i*12;
}

cursor_y = _y[1];
cursor_image_index = 0;
cursor_timer = 0;

x1 = 0+v_offset
x2 = 23+v_offset
x3 = 46+v_offset
x4 = 69+v_offset
cursor_x2 = x1

with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 1 }
with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 2 }
with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 3 }
with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 4 }

alarm[0] = 1

