/// @description Numbness
if !instance_exists(objBattleMsg) {
    if global.s_numb[pl] = 1 {
        global.numb_timer[pl]--;
        if global.numb_timer[pl] <= 0 {
            audio_play_sound(sndheal2,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[pl]+"'s body!"
            global.s_numb[pl] = 0;
        } else {
            //Skip turns 75% of the time
            if random(100)<75 {
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                if !was_solid {
                    a.str[0] = global.s_name[pl]+"'s body is "+choose("numb","paralysed")+"#   and can't move!"
                } else {
                    a.str[0] = "...but the "+choose("numbness","paralysis")+"#   is still too strong!"
                }
                skip = 1
            }
        }
    }
    alarm[5] = 1
} else {
    alarm[4] = 1
}

