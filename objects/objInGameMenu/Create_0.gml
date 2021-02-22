x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 )-32;

txt = "";

y1 = 26;
y2 = 40;
y3 = 54;
y4 = 68;
y5 = 82;
y6 = 96;

cursor_y = y1;
cursor_image_index = 0;
cursor_timer = 0;
//can_use_log = item_exists(4,11) > 0

with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 1 }
if global.pl_count >= 2 { with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 2 } }
if global.pl_count >= 3 { with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 3 } }
if global.pl_count >= 4 { with instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+176,objHealthBar) { pl = 4 } }


ok = 0;
alarm[0] = 1

