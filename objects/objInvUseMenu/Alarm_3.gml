/// @description PP up all characters

if use < global.pl_count+1 {
    if global.dead[use] {
        use++;
        alarm[2] = 1;
        exit;
    }

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
    
    if lifeup > 0 {
        if global.s_pp[use] = global.s_ppmax[use] {
            message = "@ " + global.s_name[use] + "'s PP are#   maxed out!"
        } else {
            message = "@ " + global.s_name[use] + " recovered#   " + string(lifeup) + " PP!"
        }
        audio_play_sound(sndheal1,0,0)
    } else {
        message = "It had no effect on "+global.s_name[use]+"!"
    }
    
    use++;
    alarm[2] = 60;
} else {
    del_item(num_val)
    alarm[1] = 60;
}

