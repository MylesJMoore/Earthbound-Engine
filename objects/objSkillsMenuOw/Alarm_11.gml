/// @description Lifeup all characters

if use < global.pl_count+1 {
    if global.dead[use] {
        use++;
        alarm[11] = 1;
        exit;
    }
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
    
    use++;
    alarm[11] = 60;
} else {
    alarm[9] = 60;
}

