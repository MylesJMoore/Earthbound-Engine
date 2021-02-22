cursor_x = _x[1]
cursor_y = _y[1]
_turn = 1
cursor_id = 1;
msg = "";
in_battle = 0;
ok = 1;
global.s_guard[1] = 1;
global.s_guard[2] = 1;
global.s_guard[3] = 1;
global.s_guard[4] = 1;

for (var i=1;i<=5;i++) {
    if instance_exists(global.enemy[i]) { global.enemy[i].e_grd = 1 }
}

global.itemtouse[1] = -1
global.itemtouse[2] = -1
global.itemtouse[3] = -1
global.itemtouse[4] = -1

