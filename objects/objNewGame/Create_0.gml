_x[1] = 20+v_offset
_x[2] = 92+v_offset
_x[3] = 130+v_offset
_x[4] = 160+v_offset
_y[1]  = 17
_y[2]  = 49
_y[3]  = 81
_y[4]  = 134
_y[5]  = 150
mode = 0
ok = 1

ini_open(global.config_fname)

name[1] = ini_read_string("slot1","Name","");
place[1] = ini_read_string("slot1","Place","");
level[1] = ini_read_real("slot1","Level",0);
time[1] = ini_read_real("slot1","Time",0);
flavor[1] = ini_read_real("slot1","flavor",0);

name[2] = ini_read_string("slot2","Name","");
place[2] = ini_read_string("slot2","Place","");
level[2] = ini_read_real("slot2","Level",0);
time[2] = ini_read_real("slot2","Time",0);
flavor[2] = ini_read_real("slot2","flavor",0);

name[3] = ini_read_string("slot3","Name","");
place[3] = ini_read_string("slot3","Place","");
level[3] = ini_read_real("slot3","Level",0);
time[3] = ini_read_real("slot3","Time",0);
flavor[3] = ini_read_real("slot3","flavor",0);

ini_close()

event_user(0)

cursor_x = _x[1]
cursor_y = _y[1]
cursor_image_index = 0
cursor_timer = 0

