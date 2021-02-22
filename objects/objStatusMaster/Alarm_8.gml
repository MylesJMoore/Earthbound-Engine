/// @description Can't concentrate
if !instance_exists(objBattleMsg) {
    if global.s_cantconcentrate[pl] = 1 {
        global.conc_timer[pl]--;
        if global.conc_timer[pl] <= 0 {
            audio_play_sound(sndheal2,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" was able to#   concentrate again!"
            global.s_cantconcentrate[pl] = 0;
        }
    }
    alarm[11] = 1
} else {
    alarm[8] = 1
}

