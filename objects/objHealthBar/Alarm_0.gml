/// @description HP Roll
var inc = 0;
if !global.nohproll {
    if (hp_actual > global.s_hp[pl]) {
        hp_actual -=0.25
        inc = 0
    } else if (hp_actual < global.s_hp[pl]) {
        hp_actual +=0.25
        inc = 1
    }
    
    if status.pl != pl {status.pl = pl;}
}

alarm[0] = 3*iff(inc,1,global.s_guard[pl])

