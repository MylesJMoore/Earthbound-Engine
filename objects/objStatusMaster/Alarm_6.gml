/// @description Shocked
if !instance_exists(objBattleMsg) {
    if global.s_shocked[pl] = 1 {
        global.numb_timer[pl] --;
        if global.numb_timer[pl] = 0 {
            audio_play_sound(sndheal2,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" got over the shock!";
            global.numb_timer[pl] = 0;
            global.s_shocked[pl] = 0;
        } else {
            if random(100) < 50 {
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = global.s_name[pl]+" couldn't move because of the shock!";
                skip = 1
                with global.healthbar[pl] {
                    x = xstart
                    y = ystart
                    path_start(p_shake,6,0,0)
                }
                audio_play_sound(sndbump,0,0)
            }
        }
    }
    alarm[7] = 1
} else {
    alarm[6] = 1
}

