/// @description Lifeup one character

alarm[1] = 60

if !global.dead[use] {
    if (lifeup+global.s_hp[use]) > global.s_hpmax[use] {
        lifeup = global.s_hpmax[use]-global.s_hp[use];
    }
    
    if global.s_hp[use] >= 0 {
        global.s_hp[use] += lifeup
    } else {
        if lifeup > global.s_hpmax[use] {
            global.s_hp[use] = global.s_hpmax[use]
        } else {
            global.s_hp[use] = lifeup
        }
    }
} else {
    lifeup = 0
}

if lifeup > 0 {
    if global.s_hp[use] = global.s_hpmax[use] {
        message = "@ " + global.s_name[use] + "'s HP are#   maxed out!" 
    } else {
        message = "@ " + global.s_name[use] + " recovered#   " + string(lifeup) + " HP!"
    }
    audio_play_sound(sndheal1,0,0)
} else {
    message = "@ It had no effect on "+global.s_name[use]+"!"
}

del_item(num_val)

