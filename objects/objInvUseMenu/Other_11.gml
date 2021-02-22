/// @description PP up one character

alarm[1] = 60

if !global.dead[use] {
    if (lifeup+global.s_pp[use]) > global.s_ppmax[use] {
        lifeup = global.s_ppmax[use]-global.s_pp[use];
    }
    
    if global.s_pp[use] >= 0 {
        global.s_pp[use] += lifeup
    } else {
        if lifeup > global.s_ppmax[use] {
            global.s_pp[use] = global.s_ppmax[use]
        } else {
            global.s_pp[use] = lifeup
        }
    }
} else {
    lifeup = 0
}

if lifeup > 0 {
    if global.s_pp[use] = global.s_ppmax[use] {
        message = "@ " + global.s_name[use] + "'s PP are#   maxed out!"
    } else {
        message = "@ " + global.s_name[use] + " recovered#   " + string(lifeup) + " PP!"
    }
    audio_play_sound(sndheal1,0,0)
} else {
    message = "@ It had no effect on "+global.s_name[use]+"!"
}

del_item(num_val)

