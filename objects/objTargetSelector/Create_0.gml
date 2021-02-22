if global.enemy[1] != 0 {
    x = global.enemy[1].x
    y = global.enemy[1].y
    tgt = 1
} else if global.enemy[2] != 0 {
    x = global.enemy[2].x
    y = global.enemy[2].y
    tgt = 2
} else if global.enemy[3] != 0 {
    x = global.enemy[3].x
    y = global.enemy[3].y
    tgt = 3
} else if global.enemy[4] != 0 {
    x = global.enemy[4].x
    y = global.enemy[4].y
    tgt = 4
} else if global.enemy[5] != 0 {
    x = global.enemy[5].x
    y = global.enemy[5].y
    tgt = 5
}

ok = 0;
alarm[0] = 1
blink = 0

