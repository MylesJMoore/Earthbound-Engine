/// @description Crying
if !instance_exists(objBattleMsg) {
    if global.s_crying[pl] = 1 {
        if random(160)<10 {
            audio_play_sound(sndheal2,0,0)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = choose(global.s_name[objStatusMaster.pl]+" finally stopped crying!",global.s_name[objStatusMaster.pl]+" took a deep breath#   and stopped crying!")
                }
            global.s_crying[pl] = 0
        }
    }
    alarm[6] = 1
} else {
    alarm[5] = 1
}

