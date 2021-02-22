ly[1] = instance_create(0,0,objBattleBackground) 
with ly[1] {
    effect = 0
    frequency = global.battle_bg[0,2];
    phaserate = global.battle_bg[0,3];
    amplitude = global.battle_bg[0,4];
    alpha = global.battle_bg[0,5];
    speedx = global.battle_bg[0,6];
    speedy = global.battle_bg[0,7];
    depth = 1000
    back = global.battle_bg[0,0]
}

ly[2] = instance_create(0,0,objBattleBackground) 
with ly[2] {
    effect = 0
    frequency = 0
    phaserate = 0
    amplitude = 0
    alpha = 0
    depth = 999
    back = global.battle_bg[0,0]
}

ly[3] = instance_create(0,0,objBattleBackground) 
with ly[3] {
    effect = 0
    frequency = 0
    phaserate = 0
    amplitude = 0
    alpha = 0
    depth = 999
    back = global.battle_bg[0,0]
}

layer = 1

_x[1] = 0
_x[2] = 152
_x[3] = 304
_y[1] = 6
_y[2] = 20
_y[3] = 206
_y[4] = 220

cursor_x = _x[1];
cursor_y = _y[1];
cursor_image_index = 0;
cursor_timer = 0;

