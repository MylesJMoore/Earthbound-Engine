/// @description PP Roll
if !global.nohproll {
    if (pp_actual > global.s_pp[pl]) {
        pp_actual -=0.25
    } else if (pp_actual < global.s_pp[pl]) {
        pp_actual +=0.25
    }
}

alarm[3] = 3

